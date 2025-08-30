import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../products/domain/entities/product_entity.dart';

part 'product_detail_state.dart';
part 'product_detail_notifier.freezed.dart';
part 'product_detail_notifier.g.dart';

@riverpod
class ProductDetailNotifier extends _$ProductDetailNotifier {
  @override
  ProductDetailState build() {
    return ProductDetailState();
  }

  Future<void> getProductDetail() async {}
}
