import '../models/product_model.dart';

abstract class ProductRemoteDataSourse {
  Future<List<ProductModel>> fetchAllProducts();
  Future<ProductModel> fetchProductDetail(int id);
}
