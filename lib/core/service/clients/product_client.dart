import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/products/data/models/product_model.dart';

part 'product_client.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/products')
abstract class ProductClient {
  @factoryMethod
  factory ProductClient(Dio dio, {String baseUrl}) = _ProductClient;

  @GET('')
  Future<List<ProductModel>> getAllProduct();

  @GET('/{id}')
  Future<ProductModel> getProductDetail(@Path("id") int id);
}
