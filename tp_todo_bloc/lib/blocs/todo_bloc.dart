import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_todo_bloc/blocs/todo_event.dart';
import 'package:tp_todo_bloc/blocs/todo_state.dart';
import 'package:tp_todo_bloc/models/todo.dart';
import 'package:tp_todo_bloc/repositories/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository repository;

  TodoBloc({required this.repository}) : super(TodoInitial()) {
    on<LoadTodos>((event, emit) async {
      emit(TodoLoading());
      try {
        final todos = await repository.fetchTodos();
        emit(TodoLoaded(todos));
      } catch (e) {
        emit(TodoError('Erreur lors du chargement des tâches'));
      }
    });

    on<ToggleTodo>((event, emit) async {
      if (state is TodoLoaded) {
        final currentState = state as TodoLoaded;
        final updatedTodos = currentState.todos.map((todo) {
          if (todo.id == event.todo.id) {
            return Todo(
                id: todo.id, title: todo.title, completed: !todo.completed);
          }
          return todo;
        }).toList();
        emit(TodoLoaded(updatedTodos));
        await repository.updateTodo(event.todo);
      }
    });

    on<DeleteTodo>((event, emit) async {
      if (state is TodoLoaded) {
        final currentState = state as TodoLoaded;
        final updatedTodos = currentState.todos
            .where((todo) => todo.id != event.todo.id)
            .toList();
        emit(TodoLoaded(updatedTodos));
        try {
          await repository.deleteTodo(event.todo);
        } catch (e) {
          emit(TodoError('Erreur lors de la suppression de la tâche'));
        }
      }
    });
  }
}
