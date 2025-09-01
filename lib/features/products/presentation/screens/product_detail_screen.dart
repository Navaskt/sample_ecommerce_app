import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_ecommerce_app/features/products/presentation/controller/product_detail_notifier.dart';

import '../../../products/presentation/widgets/app_error_widget.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(
      productDetailNotifierProvider(id).select((state) => state.productDetails),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Detail view')),
      body: state.when(
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.network(
                        data.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
                              child: Text(
                                'No image',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      data.title,
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.3,

                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Text(
                    data.description,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // Extra info
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "AED ${data.price.toString()}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) =>
            AppErrorWidget(errorMessage: error.toString()),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}