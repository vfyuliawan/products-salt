import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/RiwayatBS/riwayat_bs_cubit/riwayat_bs_cubit.dart';
import 'package:untitled/presentation/pages/RiwayatBS/riwayat_screen.dart';
import 'package:untitled/presentation/pages/article/article_screen.dart';
import 'package:untitled/presentation/pages/backend.dart';
import 'package:untitled/presentation/pages/cart_count/cart_count.dart';
import 'package:untitled/presentation/pages/checkout/checkout.dart';
import 'package:untitled/presentation/pages/checkout/questioner_model_bloc/questioner_model_bloc.dart';
import 'package:untitled/presentation/pages/forgot_pass_dd/forgot_pass_screen.dart';
import 'package:untitled/presentation/pages/home_bs/home_bs/home_bs_cubit.dart';
import 'package:untitled/presentation/pages/home_bs/home_screen_bs.dart';
import 'package:untitled/presentation/pages/laundry/laundry_screen.dart';
import 'package:untitled/presentation/pages/laundry/laundry_test/laundry_test_cubit.dart';
import 'package:untitled/presentation/pages/login/login_screen.dart';
import 'package:untitled/presentation/pages/login_cc/login_screen_cc.dart';
import 'package:untitled/presentation/pages/pdf_test/pdf_test.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';
import 'package:untitled/presentation/pages/product/product_screen.dart';
import 'package:untitled/presentation/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:untitled/presentation/pages/product_detail/product_detail_screen.dart';
import 'package:untitled/presentation/pages/products/product_screen.dart';
import 'package:untitled/presentation/pages/products/products_bloc/products_bloc.dart';
import 'package:untitled/presentation/pages/register/register_page.dart';
import 'package:untitled/presentation/pages/register_dd/register_dd_page_1.dart';
import 'package:untitled/presentation/pages/register_dd/register_dd_page_2.dart';
import 'package:untitled/presentation/pages/register_dd/register_dd_page_3.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/laundry-screen", routes: [
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
      path: "/laundry-screen",
      name: Routes.laundry,
      builder: (context, state) {
        BlocProvider.of<LaundryTestCubit>(context).fetchData();
        return const LaundryScreen();
      }),
  GoRoute(
    path: "/home-screen-bs",
    name: Routes.homeScreenBS,
    builder: (context, state) {
      BlocProvider.of<HomeBsCubit>(context).fetcHome();
      return const HomeScreenBS();
    },
  ),
  GoRoute(
    path: "/riwayat-screen-bs",
    name: Routes.homeRiwayatBS,
    builder: (context, state) {
      BlocProvider.of<RiwayatBsCubit>(context).fetchRiwayat("fasdfads");
      return const RiwayatScreen();
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
      path: "/register-page-dd-1",
      name: Routes.registerPageDD1,
      builder: (context, state) => RegisterPage1(),
      routes: [
        GoRoute(
            path: "register-page-dd-2",
            name: Routes.registerPageDD2,
            routes: [
              GoRoute(
                path: "register-page-dd-3",
                name: Routes.registerPageDD3,
                builder: (context, state) {
                  RegisterRequestDD page2 = state.extra as RegisterRequestDD;
                  return RegisterPage3(
                    page2: page2,
                  );
                },
              )
            ],
            builder: (context, state) {
              RegisterRequestDD page1 = state.extra as RegisterRequestDD;
              return RegisterPage2(
                page1: page1,
              );
            })
      ]),
  GoRoute(
      path: "/article",
      name: Routes.articlePage,
      builder: (context, state) => const ArticleScreen()),
  GoRoute(
    path: "/cart",
    name: Routes.cartScreen,
    builder: (context, state) => CartCount(),
  ),
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
  // GoRoute(
  //     path: "/pdf-test",
  //     name: Routes.pdfTest,
  //     routes: [
  //       GoRoute(
  //           path: "pdf-temp",
  //           name: Routes.pdfTemp,
  //           builder: (context, state) => PDFScreen()),
  //     ],
  //     builder: (context, state) {
  //       return PdfTest();
  //     }),
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
