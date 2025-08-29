import 'package:dartz/dartz.dart';
import 'package:sample_ecommerce_app/core/errors/failures.dart';

import '../entities/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failures, List<ProductEntity>>> fetchAllProducts();
}
