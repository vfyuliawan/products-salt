import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/repository/article_repository_impl.dart';
import 'package:untitled/data/repository/login_repository_impl.dart';
import 'package:untitled/data/repository/product/product_repository_impl.dart';
import 'package:untitled/data/repository/register_repository_impl.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/navigation/SARoute.dart';
import 'package:untitled/presentation/pages/login/login_bloc/login_bloc.dart';
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
