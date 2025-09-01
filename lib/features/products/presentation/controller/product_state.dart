part of 'product_notifier.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(AsyncValue.loading()) AsyncValue<List<ProductEntity>> products,
    @Default(AsyncValue.loading()) AsyncValue<ProductEntity> productDetails,
  }) = _ProductState;
}
