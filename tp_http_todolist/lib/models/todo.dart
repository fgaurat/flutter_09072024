class Todo {
  final int? id;
  final int? userId;
  final String title;
  final bool completed;
  Todo(this.title, this.completed, this.id, this.userId);

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        completed = json['completed'];
}
