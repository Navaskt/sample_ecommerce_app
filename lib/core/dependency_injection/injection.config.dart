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
import 'package:sample_ecommerce_app/core/dependency_injection/register_service_module.dart'
    as _i173;
import 'package:sample_ecommerce_app/core/service/api/dio_client.dart' as _i829;
import 'package:sample_ecommerce_app/core/service/api/request_handler.dart'
    as _i383;
import 'package:sample_ecommerce_app/core/service/clients/product_client.dart'
    as _i657;
import 'package:sample_ecommerce_app/features/products/data/datasources/product_remote_impl.dart'
    as _i436;
import 'package:sample_ecommerce_app/features/products/data/repositories/product_repository_imple.dart'
    as _i180;
import 'package:sample_ecommerce_app/features/products/domain/repositories/product_repository.dart'
    as _i706;
import 'package:sample_ecommerce_app/features/products/domain/usecases/get_product_usecases.dart'
    as _i761;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerServiceModule = _$RegisterServiceModule();
    gh.lazySingleton<_i829.DioClient>(() => registerServiceModule.dioClient);
    gh.lazySingleton<_i657.ProductClient>(
      () => registerServiceModule.productClient,
    );
    gh.lazySingleton<_i383.RequestHandler>(() => _i383.RequestHandler());
    gh.lazySingleton<_i436.ProductRemoteDataSourse>(
      () => _i436.ProductRemoteImpl(gh<_i657.ProductClient>()),
    );
    gh.lazySingleton<_i706.ProductRepository>(
      () => _i180.ProductRepositoryImple(
        gh<_i436.ProductRemoteDataSourse>(),
        gh<_i383.RequestHandler>(),
      ),
    );
    gh.lazySingleton<_i761.GetProductUsecases>(
      () => _i761.GetProductUsecases(gh<_i706.ProductRepository>()),
    );
    return this;
  }
}

class _$RegisterServiceModule extends _i173.RegisterServiceModule {}
