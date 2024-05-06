import 'package:injectable/injectable.dart';
import 'package:realm_app/RealmAPI.dart';
import 'package:realm_app/realmInterface.dart';

@module
abstract class ServicesModule {
  @preResolve
  @LazySingleton()
  Future<RealmApiInterface> realmApi() async {
    return await RealmAPI().configure(
      inTesting: bool.fromEnvironment('Test') == true,
    );
  }
}
