import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/service/clients/product_client.dart';

import '../../../products/data/models/product_model.dart';

@LazySingleton(as: ProductDetailRemoteDataSource)
class ProductDetailRemoteImpl implements ProductDetailRemoteDataSource {
  final ProductClient productClient;
  ProductDetailRemoteImpl(this.productClient);
  @override
  Future<ProductModel> fetchProductDetail(int id) async {
    final response = await productClient.getProductDetail(id);
    return response;
  }
}

abstract class ProductDetailRemoteDataSource {
  Future<ProductModel> fetchProductDetail(int id);
}
