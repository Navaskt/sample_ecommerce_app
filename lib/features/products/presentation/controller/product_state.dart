part of 'product_notifier.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(AsyncValue.loading()) AsyncValue<List<ProductEntity>> products,
  }) = _ProductState;
}
