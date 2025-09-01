import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../products/presentation/widgets/app_error_widget.dart';
import '../controller/product_notifier.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({super.key, required this.id});
  final int id;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  @override
  void initState() {
    Future.microtask(
      () => ref
          .read(productNotifierProvider.notifier)
          .getProductDetail(widget.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      productNotifierProvider.select((state) => state.productDetails),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Detail view')),
      body: state.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            AppErrorWidget(errorMessage: error.toString()),
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
      ),
    );
  }
}
