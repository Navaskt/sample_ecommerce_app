import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_ecommerce_app/core/dependency_injection/injection.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_product_detail_usecases.dart';

part 'product_detail_state.dart';
part 'product_detail_notifier.freezed.dart';
part 'product_detail_notifier.g.dart';

@riverpod
class ProductDetailNotifier extends _$ProductDetailNotifier {
  @override
  ProductDetailState build(int id) {
    Future.microtask(() => getProductDetail(id));
    return ProductDetailState();
  }

  Future<void> getProductDetail(int id) async {
    final getProductUsescases = getIt<GetProductDetailUsecases>();
    state = state.copyWith(productDetails: const AsyncValue.loading());
    final result = await getProductUsescases(id);
    result.fold(
      (failier) => state = state.copyWith(
        productDetails: AsyncValue.error(failier, StackTrace.current),
      ),
      (productDetail) {
        state = state.copyWith(productDetails: AsyncValue.data(productDetail));
      },
    );
  }
}
