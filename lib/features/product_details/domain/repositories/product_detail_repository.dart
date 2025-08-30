import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../products/domain/entities/product_entity.dart';

abstract class ProductDetailRepository {
  Future<Either<Failures, ProductEntity>> fetchproductDetails(int id);
}
