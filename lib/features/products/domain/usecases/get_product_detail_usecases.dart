import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

@lazySingleton
class GetProductDetailUsecases {
  ProductRepository productRepository;
  GetProductDetailUsecases(this.productRepository);

  Future<Either<Failures, ProductEntity>> call(int id) {
    return productRepository.fetchproductDetails(id);
  }
}
