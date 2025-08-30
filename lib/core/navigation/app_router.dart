import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_ecommerce_app/core/navigation/app_router_path.dart';
import 'package:sample_ecommerce_app/features/product_details/presentation/screens/product_detail_screen.dart';
import 'package:sample_ecommerce_app/features/products/presentation/screens/product_screen.dart';

@singleton
class AppRouter {
  late final GoRouter _router;
  GoRouter get router => _router;

  void initialize() {
    _router = GoRouter(routes: _buildRoutes());
  }

  List<GoRoute> _buildRoutes() {
    return [
      GoRoute(
        path: AppRouterPath.home,
        builder: (context, state) => ProductScreen(),
        routes: [
          GoRoute(
            path: AppRouterPath.detailPage,
            builder: (context, state) {
              final id = state.extra as int? ?? 0;
              return ProductDetailScreen(id: id);
            },
          ),
        ],
      ),
    ];
  }
}
