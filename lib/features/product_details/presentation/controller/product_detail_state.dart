part of 'product_detail_notifier.dart';

@freezed
abstract class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    @Default(AsyncValue.loading()) AsyncValue<ProductEntity> productDetails,
  }) = _ProductDetailState;
}
