import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(body: Column(children: [Text('Detail show heare...')]));
  }
}
