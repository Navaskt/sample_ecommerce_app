import 'package:injectable/injectable.dart';

import '../service/api/dio_client.dart';
import '../service/clients/product_client.dart';
import 'injection.dart';

@module
abstract class RegisterServiceModule {
  @lazySingleton
  DioClient get dioClient => DioClient();

  @lazySingleton
  ProductClient get productClient => ProductClient(
    getIt<DioClient>().dio,
    baseUrl: 'https://fakestoreapi.com/products',
  );
}
