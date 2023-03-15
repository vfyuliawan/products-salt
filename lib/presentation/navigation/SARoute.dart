import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/article/article_screen.dart';
import 'package:untitled/presentation/pages/backend.dart';
import 'package:untitled/presentation/pages/login/login_screen.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';
import 'package:untitled/presentation/pages/product/product_screen.dart';
import 'package:untitled/presentation/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:untitled/presentation/pages/product_detail/product_detail_screen.dart';
import 'package:untitled/presentation/pages/products/product_screen.dart';
import 'package:untitled/presentation/pages/products/products_bloc/products_bloc.dart';
import 'package:untitled/presentation/pages/register/register_page.dart';

final GoRouter saRouter =
    GoRouter(initialLocation: "/products-screen", routes: [
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
      path: "/product-page",
      name: Routes.productPage,
      builder: (context, state) {
        BlocProvider.of<ProductBloc>(context).add(FetchAllProduct());
        return const ProductPage();
      }),
  GoRoute(
      path: "/article",
      name: Routes.articlePage,
      builder: (context, state) => const ArticleScreen()),
  GoRoute(
      path: "/login",
      name: Routes.loginPage,
      builder: (context, state) => const LoginPage()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const RegisterPage()),
  GoRoute(
    path: '/products-screen',
    name: Routes.productScreen,
    routes: [
      GoRoute(
        path: 'product-detail-screen',
        name: Routes.productDetailScreen,
        builder: (context, state) {
          int id = state.extra as int;
          // Future<String> uid = Commons().getUid();
          BlocProvider.of<ProductDetailCubit>(context)
              .fetchDetailProduct("token", id);
          return const ProductDetailScreen();
        },
      )
    ],
    builder: (context, state) {
      BlocProvider.of<ProductsBloc>(context).add(FetchProducts());
      return const ProductsScreen();
    },
  ),
]);
