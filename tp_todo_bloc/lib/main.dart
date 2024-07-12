import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_todo_bloc/blocs/todo_bloc.dart';
import 'package:tp_todo_bloc/blocs/todo_event.dart';
import 'package:tp_todo_bloc/pages/todo_list_page.dart';
import 'package:tp_todo_bloc/repositories/todo_repository.dart';
import 'package:tp_todo_bloc/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: BlocProvider(
        create: (context) => TodoBloc(
          repository: TodoRepository(
            apiService: ApiService(),
          ),
        )..add(LoadTodos()),
        child: const TodoListScreen(),
      ),
    );
  }
}
