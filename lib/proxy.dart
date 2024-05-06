import 'package:realm_app/realmInterface.dart';

final RealmApiInterface _realm = getIt<RealmApiInterface>();

abstract class ProxyService {
  static RealmApiInterface get realm => _realm;
}
