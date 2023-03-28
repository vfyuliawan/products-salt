import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/article/article_screen.dart';
import 'package:untitled/presentation/pages/backend.dart';
import 'package:untitled/presentation/pages/checkout/checkout.dart';
import 'package:untitled/presentation/pages/checkout/questioner_model_bloc/questioner_model_bloc.dart';
import 'package:untitled/presentation/pages/forgot_pass_dd/forgot_pass_screen.dart';
import 'package:untitled/presentation/pages/home_bs/home_bs/home_bs_cubit.dart';
import 'package:untitled/presentation/pages/home_bs/home_screen_bs.dart';
import 'package:untitled/presentation/pages/login/login_screen.dart';
import 'package:untitled/presentation/pages/login_cc/login_screen_cc.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';
import 'package:untitled/presentation/pages/product/product_screen.dart';
import 'package:untitled/presentation/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:untitled/presentation/pages/product_detail/product_detail_screen.dart';
import 'package:untitled/presentation/pages/products/product_screen.dart';
import 'package:untitled/presentation/pages/products/products_bloc/products_bloc.dart';
import 'package:untitled/presentation/pages/register/register_page.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/forgot-pass-dd", routes: [
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
    path: "/home-screen-bs",
    name: Routes.homeScreenBS,
    builder: (context, state) {
      BlocProvider.of<HomeBsCubit>(context).fetcHome();
      return const HomeScreenBS();
    },
  ),
  GoRoute(
    path: "/forgot-pass-dd",
    name: Routes.forgotpass,
    builder: (context, state) {
      return const ForgotpassScreenDD();
    },
  ),
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
      path: "/login-screen-cc",
      name: Routes.loginScreenCC,
      builder: (context, state) => const LoginScreenCC()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const RegisterPage()),
  GoRoute(
      path: "/checkout-screen",
      name: Routes.checkoutScreen,
      builder: (context, state) {
        BlocProvider.of<QuestionerModelBloc>(context).add(FetchQuestionModel());
        return const CheckoutPage();
      }),
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
