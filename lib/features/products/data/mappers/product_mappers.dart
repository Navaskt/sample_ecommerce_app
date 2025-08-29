import 'package:sample_ecommerce_app/features/products/data/models/product_model.dart';
import 'package:sample_ecommerce_app/features/products/domain/entities/product_entity.dart';

extension ProductMappers on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: image,
      rating: rating.toEntity(),
    );
  }
}

extension RatingX on Rating {
  RatingEntity toEntity() {
    return RatingEntity(rate: rate, count: count);
  }
}
