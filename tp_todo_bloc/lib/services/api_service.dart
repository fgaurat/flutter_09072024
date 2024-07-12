import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/todo.dart';

class ApiService {
  final String baseUrl = 'http://10.0.2.2:3000';

  Future<List<dynamic>> getTodos() async {
    final response = await http.get(Uri.parse('$baseUrl/todos'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Échec du chargement des tâches');
    }
  }

  Future<void> updateTodo(Todo todo) async {
    await http.patch(
      Uri.parse('$baseUrl/todos/${todo.id}'),
      body: json.encode({'completed': todo.completed}),
      headers: {'Content-Type': 'application/json'},
    );
  }

  Future<void> deleteTodo(Todo todo) async {
    final response = await http.delete(Uri.parse('$baseUrl/todos/${todo.id}'));
    if (response.statusCode != 200) {
      throw Exception('Échec de la suppression de la tâche');
    }
  }
}
