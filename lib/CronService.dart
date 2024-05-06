import 'dart:isolate';

import 'package:flutter/services.dart';
import 'package:realm/realm.dart';
import 'package:realm_app/AppSecrets.dart';
import 'package:realm_app/proxy.dart';
import 'package:realm_app/realmModels.dart';
import 'package:realm_app/schemas.dart';
import 'package:talker_flutter/talker_flutter.dart';

extension StringToIntList on String {
  List<int> toIntList() {
    return this.split(',').map((e) => int.parse(e.trim())).toList();
  }
}

class CronService {
  Future<void> schedule() async {
    // create a compute function to keep track of unsaved data back to EBM do this in background

    await _spawnIsolate("transactions", IsolateHandler.handleEBMTrigger);
  }

  final talker = TalkerFlutter.init();

  Future<void> _spawnIsolate(String name, dynamic isolateHandler) async {
    try {
      String encryptionKey =
          "233,208,132,117,255,201,221,131,14,40,56,240,47,226,73,76,138,217,55,54,149,10,109,4,86,51,62,18,149,133,100,197,144,162,43,7,178,52,81,111,72,172,32,67,62,21,26,45,204,243,133,215,255,247,212,54,189,118,16,161,48,80,144,135";

      ReceivePort receivePort = ReceivePort();
      await Isolate.spawn(
        isolateHandler,
        [
          RootIsolateToken.instance,
          receivePort.sendPort,
          243,
          await ProxyService.realm.dbPath(),
          encryptionKey,
          999909695,
          "00"
        ],
      );
    } catch (error, s) {
      talker.error(s);
    }
  }
}

mixin IsolateHandler {
  static Future<void> syncUnsynced(List<dynamic> args) async {
    final dbPatch = args[3] as String;
    String key = args[4] as String;
    List<int> encryptionKey = key.toIntList();

    final app = App.getById(AppSecrets.appId);
    final user = app?.currentUser!;
    FlexibleSyncConfiguration config =
        realmConfig(user, encryptionKey, dbPatch);

    final realm = Realm(config);

    await realm.subscriptions.waitForSynchronization();
  }

  static Future<void> handleEBMTrigger(List<dynamic> args) async {
    final rootIsolateToken = args[0] as RootIsolateToken;

    final dbPatch = args[3] as String;
    String key = args[4] as String;
    int tinNumber = args[5] as int;
    String bhfId = args[6] as String;
    List<int> encryptionKey = key.toIntList();
    BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);

    final app = App.getById(AppSecrets.appId);
    final user = app?.currentUser!;
    FlexibleSyncConfiguration config =
        realmConfig(user, encryptionKey, dbPatch);

    final realm = Realm(config);

    await syncUnsynced(args);

    // load all variants
    List<Variant> variants = realm.all<Variant>().toList();
    final talker = TalkerFlutter.init();
    await realm.writeAsync(() async {
      for (Variant variant in variants) {
        if (!variant.ebmSynced) {
          try {
            variant.tin = tinNumber;
            variant.bhfId = bhfId;
            talker.info("saving Variant on EBM server ${variant.tin}");
            await Future.delayed(Duration(seconds: 10));
            variant.ebmSynced = true;
            realm.add<Variant>(variant, update: true);
          } catch (e, s) {
            talker.info("failed to save Variant on EBM server");
            talker.error(s);

            variant.ebmSynced = false;

            realm.add<Variant>(variant, update: true);
          }
        }
      }
    });
    // load all stock
    List<Stock> stocks = realm.all<Stock>().toList();
    realm.writeAsync(() async {
      for (Stock stock in stocks) {
        if (!stock.ebmSynced) {
          try {
            Variant variant = realm.query<Variant>(
              r'id == $0 AND deletedAt == nil',
              [stock.variantId],
            ).first;
            stock.tin = tinNumber;
            stock.bhfId = bhfId;
            await Future.delayed(Duration(seconds: 10));
            stock.ebmSynced = true;
            realm.add<Stock>(stock, update: true);
          } catch (e, s) {
            talker.error(s);

            stock.ebmSynced = false;
            realm.add<Stock>(stock, update: true);
          }
        }
      }
    });
  }

  static FlexibleSyncConfiguration realmConfig(
    User? user,
    List<int> encryptionKey,
    String dbPatch,
  ) {
    final config = Configuration.flexibleSync(
      user!,
      realmModels,
      encryptionKey: encryptionKey,
      path: dbPatch,
    );
    return config;
  }
}
