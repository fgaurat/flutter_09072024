import 'package:flutter/material.dart';
import 'package:tp_sqflite/pages/todo_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TodoListSQFLite"),
        ),
        body: const Center(
          child: TodoList(),
        ),
      ),
    );
  }
}
