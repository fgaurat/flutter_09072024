import 'package:flutter/material.dart';
import 'package:tp_hive_todos/todo_box.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: ListView.builder(
          itemCount: todoBox.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todoBox.getAt(index)?.title ?? ""),
            );
          }),
    );
  }
}
