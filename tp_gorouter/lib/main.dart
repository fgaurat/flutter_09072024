import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/pages/first_page.dart';
import 'package:tp_gorouter/pages/home_page.dart';
import 'package:tp_gorouter/pages/second_page.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: HomePage.route,
    builder: (BuildContext context, GoRouterState state) {
      return const HomePage();
    },
  ),
  GoRoute(
    path: FirstPage.route,
    builder: (BuildContext context, GoRouterState state) {
      return const FirstPage();
    },
  ),
  GoRoute(
    path: SecondPage.route,
    name: "hello",
    builder: (BuildContext context, GoRouterState state) {
      String name = state.pathParameters['name']!;
      return SecondPage(name: name);
    },
  ),
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
