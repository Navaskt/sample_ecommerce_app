import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    @Default(RatingEntity()) RatingEntity rating,
  }) = _ProductEntity;
}

@freezed
abstract class RatingEntity with _$RatingEntity {
  const factory RatingEntity({@Default(0) double rate, @Default(0) int count}) =
      _RatingEntity;
}
