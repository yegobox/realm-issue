import 'package:realm/realm.dart';

extension StringToIntList on String {
  List<int> toIntList() {
    return this.split(',').map((e) => int.parse(e.trim())).toList();
  }
}

abstract class RealmApiInterface {
  Future<RealmApiInterface> configure({required bool inTesting});
  Realm? realm;
  bool isRealmClosed();
  Future<String> dbPath();
}
