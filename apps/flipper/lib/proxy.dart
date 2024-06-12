import 'package:realm_app/CronService.dart';
import 'package:realm_app/locator.dart';
import 'package:realm_app/realmInterface.dart';

final RealmApiInterface _realm = getIt<RealmApiInterface>();
final CronService _reportService = getIt<CronService>();

abstract class ProxyService {
  static RealmApiInterface get realm => _realm;
  static CronService get cron => _reportService;
}
