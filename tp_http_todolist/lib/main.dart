import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todolist/models/todo.dart';
import 'package:tp_http_todolist/pages/todo_detail.dart';
import 'package:tp_http_todolist/pages/todo_form.dart';
import 'package:tp_http_todolist/pages/todo_list.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TodoList(),
    ),
    GoRoute(
        path: '/detail',
        builder: (context, state) => TodoDetail(todo: state.extra as Todo)),
    GoRoute(path: '/add', builder: (context, state) => const TodoForm()),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
