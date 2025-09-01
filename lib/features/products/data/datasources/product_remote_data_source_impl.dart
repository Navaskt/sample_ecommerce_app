import 'package:injectable/injectable.dart';

import '../../../../core/service/clients/product_client.dart';
import '../models/product_model.dart';
import 'product_remote_data_source.dart';

@LazySingleton(as: ProductRemoteDataSourse)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSourse {
  final ProductClient productClient;
  ProductRemoteDataSourceImpl(this.productClient);
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
