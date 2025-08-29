// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/products/data/datasources/product_remote_impl.dart'
    as _i171;
import '../service/api/dio_client.dart' as _i525;
import '../service/clients/product_client.dart' as _i910;
import 'register_service_module.dart' as _i418;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerServiceModule = _$RegisterServiceModule();
    gh.lazySingleton<_i525.DioClient>(() => registerServiceModule.dioClient);
    gh.lazySingleton<_i910.ProductClient>(
      () => registerServiceModule.productClient,
    );
    gh.lazySingleton<_i171.ProductRemoteDataSourse>(
      () => _i171.ProductRemoteImpl(gh<_i910.ProductClient>()),
    );
    return this;
  }
}

class _$RegisterServiceModule extends _i418.RegisterServiceModule {}
