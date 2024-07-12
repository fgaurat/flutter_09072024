import 'package:flutter/material.dart';
import 'package:tp_http_todolist/models/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;

  const TodoDetail({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Detail'),
      ),
      body: Text(todo.title),
    );
  }
}
