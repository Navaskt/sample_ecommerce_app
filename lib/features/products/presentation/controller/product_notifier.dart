import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_ecommerce_app/core/dependency_injection/injection.dart';
import 'package:sample_ecommerce_app/features/products/domain/usecases/get_product_usecases.dart';

import '../../domain/entities/product_entity.dart';

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
}
