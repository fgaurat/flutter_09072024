import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/todo.dart';
import 'package:tp_mvvm/models/todo_view_model.dart';
import 'package:tp_mvvm/widgets/change_todo_title.dart';
import 'package:tp_mvvm/widgets/show_todo_title.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<TodoViewModel>(
      create: (context) {
        Todo t = Todo("Faire du Flutter");
        TodoViewModel vm = TodoViewModel(t);
        return vm;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MVVM'),
        ),
        body: const Column(
          children: [
            ShowTodoTitle(),
            ChangeTodoTitle(),
          ],
        ),
      ),
    ));
  }
}
