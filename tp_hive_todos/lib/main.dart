import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import "dart:math"
import 'package:tp_hive_todos/models/todo.dart';
import 'package:tp_hive_todos/pages/todo_list_page.dart';
import 'package:tp_hive_todos/todo_box.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  todoBox = await Hive.openBox<Todo>('todoBox');

  // todoBox.put(Random().nextInt(1000), Todo("Faire du flutter",false));

  // for (int i = 0; i <= 10; i++) {
  //   todoBox.add(Todo("Faire du flutter $i", false));
  // }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TodoListPage());
  }
}
