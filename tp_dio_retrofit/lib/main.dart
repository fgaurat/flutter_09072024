import 'package:flutter/material.dart';
import 'package:tp_dio_retrofit/pages/todo_list_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TodoListPage());
  }
}
