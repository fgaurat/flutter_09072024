import '../models/todo.dart';
import '../services/api_service.dart';
import "dart:developer" as developer;

class TodoRepository {
  final ApiService apiService;

  TodoRepository({required this.apiService});

  Future<List<Todo>> fetchTodos() async {
    final jsonList = await apiService.getTodos();
    developer.log("fetchTodos");
    final data = jsonList.map((json) => Todo.fromJson(json)).toList();
    developer.log("jsonList:$jsonList");
    return data;
  }

  Future<void> updateTodo(Todo todo) async {
    await apiService.updateTodo(todo);
  }

  Future<void> deleteTodo(Todo todo) async {
    await apiService.deleteTodo(todo);
  }
}
