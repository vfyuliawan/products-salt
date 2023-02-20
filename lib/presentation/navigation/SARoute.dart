import 'package:go_router/go_router.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/article/article_screen.dart';
import 'package:untitled/presentation/pages/backend.dart';
import 'package:untitled/presentation/pages/login/login_screen.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/login", routes: [
  GoRoute(
      path: "/backend",
      name: Routes.backendPage,
      builder: (context, state) => const BackendTest()),
  GoRoute(
      path: "/article",
      name: Routes.articlePage,
      builder: (context, state) => const ArticleScreen()),
  GoRoute(
      path: "/login",
      name: Routes.loginPage,
      builder: (context, state) => const LoginPage())
]);
