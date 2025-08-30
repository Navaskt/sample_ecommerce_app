import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';
import 'package:sample_ecommerce_app/features/products/domain/entities/product_entity.dart';
import 'package:sample_ecommerce_app/features/products/domain/repositories/product_repository.dart';

@lazySingleton
class GetProductUsecases {
  final ProductRepository productRepository;
  GetProductUsecases(this.productRepository);

  Future<Either<Failures, List<ProductEntity>>> call() async {
    return await productRepository.fetchAllProducts();
  }
}
