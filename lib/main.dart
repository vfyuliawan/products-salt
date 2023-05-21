import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/repository/article_repository_impl.dart';
import 'package:untitled/data/repository/forgot_password_dd/forgot_password_impl_dd.dart';
import 'package:untitled/data/repository/home_bs/home_bs_repository_impl.dart';
import 'package:untitled/data/repository/laundry_repository/laundry_repository_impl.dart';
import 'package:untitled/data/repository/login_cc/login_repository_impl.dart';
import 'package:untitled/data/repository/login_repository_impl.dart';
import 'package:untitled/data/repository/product/product_repository_impl.dart';
import 'package:untitled/data/repository/register_repository_impl.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/navigation/SARoute.dart';
import 'package:untitled/presentation/pages/RiwayatBS/riwayat_bs_cubit/riwayat_bs_cubit.dart';
import 'package:untitled/presentation/pages/checkout/questioner_model_bloc/questioner_model_bloc.dart';
import 'package:untitled/presentation/pages/forgot_pass_dd/forgot_pass_cubit/forgot_pass_dd_cubit.dart';
import 'package:untitled/presentation/pages/home_bs/home_bs/home_bs_cubit.dart';
import 'package:untitled/presentation/pages/laundry/laundry_test/laundry_test_cubit.dart';
import 'package:untitled/presentation/pages/login/login_bloc/login_bloc.dart';
import 'package:untitled/presentation/pages/login_cc/login_cc/login_cc_cubit.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';
import 'package:untitled/presentation/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:untitled/presentation/pages/products/products_bloc/products_bloc.dart';
import 'package:untitled/presentation/pages/register/register_bloc/register_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(LoginRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(RegisterRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => ProductBloc(ProductRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => ProductsBloc(ProductRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => ProductDetailCubit(ProductRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => QuestionerModelBloc(),
        ),
        BlocProvider(
          create: (context) => LoginCcCubit(LoginRepositoryImplCC()),
        ),
        BlocProvider(
          create: (context) => HomeBsCubit(HomeBSRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => ForgotPassDdCubit(ForgotPasswordImplDD()),
        ),
        BlocProvider(
          create: (context) => RiwayatBsCubit(HomeBSRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => LaundryTestCubit(LaundryRepositoryImpl()),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: saRouter.routerDelegate,
        routeInformationParser: saRouter.routeInformationParser,
        routeInformationProvider: saRouter.routeInformationProvider,
      ),
    );
  }
}
