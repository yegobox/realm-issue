// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'CronService.dart' as _i4;
import 'module.service.dart' as _i5;
import 'realmInterface.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final servicesModule = _$ServicesModule();
    await gh.lazySingletonAsync<_i3.RealmApiInterface>(
      () => servicesModule.realmApi(),
      preResolve: true,
    );
    gh.lazySingleton<_i4.CronService>(() => servicesModule.cron());
    return this;
  }
}

class _$ServicesModule extends _i5.ServicesModule {}
