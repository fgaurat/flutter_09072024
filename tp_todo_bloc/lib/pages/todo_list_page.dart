import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_todo_bloc/blocs/todo_state.dart';
import 'package:tp_todo_bloc/widgets/todo_item.dart';
import '../../blocs/todo_bloc.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma Liste de Tâches')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                return TodoItem(todo: state.todos[index]);
              },
            );
          } else if (state is TodoError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text('Aucune tâche à afficher'));
        },
      ),
    );
  }
}
