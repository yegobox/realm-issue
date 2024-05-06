import 'dart:io';

import 'package:realm_app/AppSecrets.dart';
import 'package:realm_app/realmInterface.dart';
import 'package:realm_app/realmModels.dart';
import 'package:realm_app/schemas.dart';
import 'package:realm_dart/src/realm_class.dart';

import 'package:flutter/foundation.dart' as foundation;
import 'package:path_provider/path_provider.dart';
import 'package:talker_flutter/talker_flutter.dart';

class RealmAPI implements RealmApiInterface {
  @override
  Realm? realm;
  final talker = TalkerFlutter.init();
  late String apihub;
  late String commApi;

  @override
  Future<RealmApiInterface> configure({required bool inTesting}) async {
    if (foundation.kDebugMode) {
      apihub = AppSecrets.apihubUat;
      commApi = AppSecrets.commApi;
    } else if (foundation.kDebugMode) {
      apihub = AppSecrets.apihubUat;
      commApi = AppSecrets.commApi;
    } else if (!foundation.kDebugMode) {
      apihub = AppSecrets.apihubProd;
      commApi = AppSecrets.commApi;
    }

    Configuration config;

    if (inTesting) {
      if (realm != null) {
        realm!.close();
      }
      config = Configuration.inMemory(realmModels);
      realm = Realm(config);
    } else {
      /// because most likely we will open the realm with sync after we opened in memory database
      /// then we need to close the one recently opened
      if (realm != null) {
        realm!.close();
      }
      talker.info("opening the synced realm for the app to run on launch");

      // List<int> key = ProxyService.box.encryptionKey().toIntList();
      String path = await dbPath();
      //NOTE: https://www.mongodb.com/docs/atlas/app-services/domain-migration/
      final app = App(AppConfiguration(AppSecrets.appId,
          baseUrl: Uri.parse("https://services.cloud.mongodb.com")));
      final user = app.currentUser ??
          await app.logIn(Credentials.apiKey(AppSecrets.mongoApiSecret));

      int? branchId = 243;
      int? businessId = 1642656;
      config = Configuration.flexibleSync(
        user,
        realmModels,
        encryptionKey:
            "233,208,132,117,255,201,221,131,14,40,56,240,47,226,73,76,138,217,55,54,149,10,109,4,86,51,62,18,149,133,100,197,144,162,43,7,178,52,81,111,72,172,32,67,62,21,26,45,204,243,133,215,255,247,212,54,189,118,16,161,48,80,144,135"
                .toIntList(),
        path: path,
        clientResetHandler: RecoverUnsyncedChangesHandler(
          onBeforeReset: (beforeResetRealm) {
            ///which the SDK invokes prior to the client reset.
            ///You can use this callback to notify the user before the reset begins.
          },
        ),
        shouldCompactCallback: ((totalSize, usedSize) {
          // Compact if the file is over 10MB in size and less than 50% 'used'
          const tenMB = 10 * 1048576;
          return (totalSize > tenMB) &&
              (usedSize.toDouble() / totalSize.toDouble()) < 0.5;
        }),
      );

      CancellationToken token = CancellationToken();

      Future<void>.delayed(
        const Duration(seconds: 30),
        () => token.cancel(
          const CancelledException(
            cancellationReason: "Realm took too long to open",
          ),
        ),
      );

      talker.info("Opened realm in catch ");
      // realm = Realm(config);
      // Realm.logger.level = RealmLogLevel.trace;
      await updateSubscription(branchId, businessId);
    }
    return this;
  }

  @override
  bool isRealmClosed() {
    return realm?.isClosed ?? true;
  }

  @override
  Future<String> dbPath() async {
    int? branchId = 243;
    int? businessId = 1642656;
    String fileName = "db_";
    final appDocsDirectory = await getApplicationDocumentsDirectory();

    final realmDirectory = '${appDocsDirectory.path}/flipper-v4-' +
        branchId.toString() +
        "_" +
        businessId.toString();

    // Create the new directory
    await Directory(realmDirectory).create(recursive: true);

    return "$realmDirectory/$fileName";
  }

  updateSubscription(int branchId, int businessId) async {
    if (realm == null) return;
    final variant = realm!.query<Variant>(r'branchId == $0', [branchId]);
    final stock = realm!.query<Stock>(r'branchId == $0', [branchId]);
    await variant.subscribe(
        name: "variant-${businessId}",
        waitForSyncMode: WaitForSyncMode.always,
        update: true);

    await stock.subscribe(
        name: "stock-${businessId}",
        waitForSyncMode: WaitForSyncMode.always,
        update: true);
  }
}
