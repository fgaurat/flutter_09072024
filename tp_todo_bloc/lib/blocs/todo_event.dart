import 'package:tp_todo_bloc/models/todo.dart';

abstract class TodoEvent {}

class LoadTodos extends TodoEvent {}

class ToggleTodo extends TodoEvent {
  final Todo todo;
  ToggleTodo(this.todo);
}

class DeleteTodo extends TodoEvent {
  final Todo todo;
  DeleteTodo(this.todo);
}
