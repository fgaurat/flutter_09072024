import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId: 1)
class Todo extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1, defaultValue: false)
  final bool completed;

  Todo(this.title, this.completed);
}
