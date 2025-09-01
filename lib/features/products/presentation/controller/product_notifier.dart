import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/dependency_injection/injection.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_product_detail_usecases.dart';
import '../../domain/usecases/get_product_usecases.dart';

part 'product_state.dart';
part 'product_notifier.freezed.dart';
part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  ProductState build() {
    Future.microtask(() => fetchProducts());
    return ProductState();
  }

  Future<void> fetchProducts() async {
    state = state.copyWith(products: AsyncValue.loading());
    final getproductUseCases = getIt<GetProductUsecases>();

    final result = await getproductUseCases();
    result.fold(
      (failure) => state = state.copyWith(
        products: AsyncError(failure, StackTrace.current),
      ),
      (products) {
        state = state.copyWith(products: AsyncData(products));
      },
    );
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
