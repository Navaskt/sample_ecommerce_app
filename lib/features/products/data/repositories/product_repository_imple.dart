import 'package:dartz/dartz.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';
import 'package:sample_ecommerce_app/features/products/data/datasources/product_remote_impl.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImple implements ProductRepository {
  ProductRemoteDataSourse productRemoteDataSourse;
  
  ProductRepositoryImple(this.productRemoteDataSourse);

  @override
  Future<Either<Failures, List<ProductEntity>>> fetchAllProducts() {
    // TODO: implement fetchAllProducts
    throw UnimplementedError();
  }
}
