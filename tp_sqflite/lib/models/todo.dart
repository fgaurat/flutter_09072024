import 'dart:convert' as convert;

class Todo {
  int? id;
  final String title;
  final bool completed;
  Todo(this.title, this.completed, {this.id = 0});

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        completed = json['completed'];

  String toJson() {
    return convert.jsonEncode({
      "title": title,
      "completed": completed,
    });
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'completed': completed};
  }

  Todo.fromMapObject(Map<String, dynamic> map)
      : id = map['id'],
        title = map['title'],
        completed = map['completed'] == 0 ? false : true;
}
