import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tp_sqflite/models/todo.dart';

class TodoDAO {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await open();
    return _database!;
  }

  Future open() async {
    String databaseDir = await getDatabasesPath();

    return await openDatabase(join(databaseDir, 'todos_database.db'),
        onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE todos(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, completed INTEGER)',
      );
    }, version: 1);
  }

  Future<Todo> insert(Todo todo) async {
    final db = await database;
    Map m = todo.toMap();
    m.remove("id");
    todo.id = await db.insert(
      'todos',
      m as Map<String, Object?>,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return todo;
  }

  Future<List<Todo>> getTodoList() async {
    final db = await database;
    var todoMapList = await db.query("todos");

    int count = todoMapList.length;

    List<Todo> todoList = [];
    for (int i = 0; i < count; i++) {
      todoList.add(Todo.fromMapObject(todoMapList[i]));
    }

    return todoList;
  }
}
