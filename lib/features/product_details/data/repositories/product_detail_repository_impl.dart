import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';
import 'package:sample_ecommerce_app/features/products/data/mappers/product_mappers.dart';

import '../../../../core/service/api/request_handler.dart';
import '../../../products/domain/entities/product_entity.dart';
import '../../domain/repositories/product_detail_repository.dart';
import '../datasourse/product_detail_remote.dart';

@LazySingleton(as: ProductDetailRepository)
class ProductDetailRepositoryImpl implements ProductDetailRepository {
  ProductDetailRemoteDataSource productDetailRemoteDataSource;
  RequestHandler requestHandler;

  ProductDetailRepositoryImpl(
    this.productDetailRemoteDataSource,
    this.requestHandler,
  );
  @override
  Future<Either<Failures, ProductEntity>> fetchproductDetails(int id) async {
    return requestHandler.handle<ProductEntity>(() async {
      final result = await productDetailRemoteDataSource.fetchProductDetail(id);
      final entity = result.toEntity();
      return entity;
    });
  }
}
