import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  final int? id;
  final int? userId;
  final String title;
  final bool completed;
  Todo(this.title, this.completed, {this.id = 0, this.userId = 0});

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
