import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'title') String title,
    @Default(0) @JsonKey(name: 'price') double price,
    @Default('') @JsonKey(name: 'description') String description,
    @Default('') @JsonKey(name: 'category') String category,
    @Default('') @JsonKey(name: 'image') String image,
    @JsonKey(name: 'rating') @Default(Rating()) Rating rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    @Default(0) @JsonKey(name: 'rate') double rate,
    @Default(0) @JsonKey(name: 'count') int count,
  }) = _Rating;
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
