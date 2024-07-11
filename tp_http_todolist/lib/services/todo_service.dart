import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tp_http_todolist/models/todo.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import "dart:convert" as convert;

class TodoService {
  static Future<List<Todo>> findAll() async {
    List todos = [];

    var url = getUrl();
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      todos = convert.jsonDecode(response.body); // List<Map> => List<Todo>
    }

    return todos.map((t) => Todo.fromJson(t)).toList();
  }

  static String getUrl() {
    var url = dotenv.get("ANDROID_URL_TODOS", fallback: "");
    if (Platform.isIOS) {
      url = dotenv.get("IOS_URL_TODOS", fallback: "");
    }

    return url;
  }
}
