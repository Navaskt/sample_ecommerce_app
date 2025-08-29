import 'package:dio/dio.dart';

class DioClient {
  static String get baseurl => 'https://fakestoreapi.com/products';

  late final Dio dio;

  DioClient() {
    dio = Dio(BaseOptions(baseUrl: baseurl));
  }
}
