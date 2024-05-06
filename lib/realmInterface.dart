import 'package:realm/realm.dart';

abstract class RealmApiInterface {
  Future<RealmApiInterface> configure({required bool inTesting});
  Realm? realm;
  bool isRealmClosed();
  Future<String> dbPath();
}
