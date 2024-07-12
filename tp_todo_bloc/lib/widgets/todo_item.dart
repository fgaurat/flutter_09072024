import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_todo_bloc/blocs/todo_event.dart';
import '../../blocs/todo_bloc.dart';
import '../../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          context.read<TodoBloc>().add(DeleteTodo(todo));
        }, // Ajoutez ce bouton
      ),
      leading: Checkbox(
        value: todo.completed,
        onChanged: (_) {
          context.read<TodoBloc>().add(ToggleTodo(todo));
        },
      ),
    );
  }
}
