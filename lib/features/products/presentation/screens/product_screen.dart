import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_ecommerce_app/features/products/presentation/controller/product_notifier.dart';
import 'package:sample_ecommerce_app/features/products/presentation/widgets/app_error_widget.dart';
import 'package:sample_ecommerce_app/features/products/presentation/widgets/product_list_item_widget.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(productNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        backgroundColor: Colors.blueGrey,
      ),
      body: state.products.when(
        data: (product) {
          return ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index) {
              return ProductListItemWidget(
                title: product[index].title,
                subtitle: product[index].description,
                imageUrl: product[index].image,
              );
            },
          );
        },
        error: (error, stackTrace) =>
            AppErrorWidget(errorMessage: error.toString()),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
