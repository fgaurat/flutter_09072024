import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'dart:io';
import 'package:http/http.dart' as http;
import "dart:convert" as convert;

import 'package:tp_unittest/models/todo.dart';

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

  static Future<http.Response> save(Todo todo) async {
    var url = getUrl();
    var response = await http.post(Uri.parse(url),
        body: todo.toJson(), headers: {"Content-type": "application/json"});
    return response;
  }

  static Future<http.Response> delete(Todo todo) async {
    var url = "${getUrl()}/${todo.id}";
    var response = await http.delete(Uri.parse(url));
    return response;
  }

  static String getUrl() {
    var url = dotenv.get("ANDROID_URL_TODOS", fallback: "");
    if (Platform.isIOS) {
      url = dotenv.get("IOS_URL_TODOS", fallback: "");
    }

    return url;
  }
}
