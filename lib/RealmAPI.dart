import 'package:realm_app/realmInterface.dart';
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
    if (foundation.kDebugMode && !isAndroid) {
      apihub = AppSecrets.apihubUat;
      commApi = AppSecrets.commApi;
    } else if (foundation.kDebugMode && isAndroid) {
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
    } else if (ProxyService.box.getBranchId() != null ||
        ProxyService.box.getBusinessId() != null) {
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

      int? branchId = ProxyService.box.getBranchId() ?? 0;
      int? businessId = ProxyService.box.getBusinessId() ?? 0;
      config = Configuration.flexibleSync(
        user,
        realmModels,
        encryptionKey: ProxyService.box.encryptionKey().toIntList(),
        path: path,
        clientResetHandler: RecoverUnsyncedChangesHandler(
          onBeforeReset: (beforeResetRealm) {
            log("reset requested here..");

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
      // realm = await Realm.open(config);
      // CancellationToken token = CancellationToken();

      // Cancel the open operation after 30 seconds.
      // Alternatively, you could display a loading dialog and bind the cancellation
      // to a button the user can click to stop the wait.
      // Future<void>.delayed(
      //   const Duration(seconds: 30),
      //   () => token.cancel(
      //     CancelledException(
      //       cancellationReason: "Realm took too long to open",
      //     ),
      //   ),
      // );
      // try {
      //   if (await ProxyService.status.isInternetAvailable()) {
      //     talker.info("Opened realm[1] with  internet access!");
      //     realm = await Realm.open(config, cancellationToken: token,
      //         onProgressCallback: (syncProgress) {
      //       if (syncProgress.progressEstimate == 1.0) {
      //         talker.info('All bytes transferred!');
      //       }
      //     });
      //   } else {
      //     talker.info("Opened realm[1] with no internet access!");
      //     realm = Realm(config);
      //   }
      // } catch (e) {
      //   talker.info("Opened realm in catch ");
      //   realm = Realm(config);
      // }
      // talker.info("Opened realm in catch ");
      realm = Realm(config);
      // Realm.logger.level = RealmLogLevel.trace;
      await updateSubscription(branchId, businessId);
    } else {
      //  open local database not synced one!
      talker.info(
          "opening the inMemory realm for the app to run on launch this is case where we don't have configuration necessary from the authenticated user!");
      final config = Configuration.inMemory(realmModels);
      realm = Realm(config);
    }
    return this;
  }

  @override
  bool isRealmClosed() {
    return realm?.isClosed ?? true;
  }

  @override
  Future<String> dbPath() async {
    String fileName = "db_";
    final appDocsDirectory = await getApplicationDocumentsDirectory();
    final int businessId = ProxyService.box.getBusinessId() ?? 0;
    final int branchId = ProxyService.box.getBranchId() ?? 0;
    final realmDirectory = '${appDocsDirectory.path}/flipper-v4-' +
        branchId.toString() +
        "_" +
        businessId.toString();

    // Create the new directory
    await Directory(realmDirectory).create(recursive: true);

    return "$realmDirectory/$fileName";
  }

  updateSubscription(int branchId, int businessId) {}
}
