import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';
import 'package:sample_ecommerce_app/features/products/domain/entities/product_entity.dart';

import '../repositories/product_detail_repository.dart';

@lazySingleton
class GetProductDetailUsecase {
  ProductDetailRepository productDetailRepository;

  GetProductDetailUsecase(this.productDetailRepository);
  Future<Either<Failures, ProductEntity>> call(int id) {
    return productDetailRepository.fetchproductDetails(id);
  }
}
