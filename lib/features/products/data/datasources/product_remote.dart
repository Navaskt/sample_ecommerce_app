import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/service/clients/product_client.dart';

import '../models/product_model.dart';

@LazySingleton(as: ProductRemoteDataSourse)
class ProductRemoteImpl implements ProductRemoteDataSourse {
  final ProductClient productClient;
  ProductRemoteImpl(this.productClient);
  @override
  Future<List<ProductModel>> fetchAllProducts() async {
    final response = await productClient.getAllProduct();
    return response;
  }

  @override
  Future<ProductModel> fetchProductDetail(int id) async {
    final response = await productClient.getProductDetail(id);
    return response;
  }
}

abstract class ProductRemoteDataSourse {
  Future<List<ProductModel>> fetchAllProducts();
  Future<ProductModel> fetchProductDetail(int id);
}
