import 'dart:convert' as convert;

class Todo {
  final int? id;
  final int? userId;
  final String title;
  final bool completed;
  Todo(this.title, this.completed, {this.id = 0, this.userId = 0});

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        completed = json['completed'];

  String toJson() {
    return convert.jsonEncode({
      "title": title,
      "completed": completed,
    });
  }
}
