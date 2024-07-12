import "dart:developer" as developer;

// Modèle Todo
class Todo {
  final int id;
  final String title;
  bool completed;

  Todo({required this.id, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    developer.log("$json");
    return Todo(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
