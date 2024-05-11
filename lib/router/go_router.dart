import 'package:flutter_widget_compose/entities/product.dart';
import 'package:flutter_widget_compose/screens/homepage.dart';
import 'package:flutter_widget_compose/screens/productdetail.dart';
import 'package:flutter_widget_compose/screens/profile.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
      GoRoute(
          path: 'detail',
          builder: (context, state) {
            final product = state.extra as ProductToDisplay;
            return ProductDetailScreen(product: product);
          })
    ]),
    GoRoute(
        path: '/profile',
        builder: (context, state) {
            return ProfilePage();
            }), 
  ],
);
