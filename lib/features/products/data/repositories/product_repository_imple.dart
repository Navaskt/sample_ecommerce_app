import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';
import 'package:sample_ecommerce_app/features/products/data/datasources/product_remote_impl.dart';
import 'package:sample_ecommerce_app/features/products/data/mappers/product_mappers.dart';

import '../../../../core/service/api/request_handler.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/product_repository.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImple implements ProductRepository {
  ProductRemoteDataSourse productRemoteDataSourse;
  RequestHandler requestHandler;

  ProductRepositoryImple(this.productRemoteDataSourse, this.requestHandler);

  @override
  Future<Either<Failures, List<ProductEntity>>> fetchAllProducts() async {
    return requestHandler.handle<List<ProductEntity>>(() async {
      final productList = await productRemoteDataSourse.fetchAllProducts();
      final entities = productList.map((item) => item.toEntity()).toList();
      return entities;
    });
  }
}
