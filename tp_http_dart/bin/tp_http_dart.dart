import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> arguments) async {
  var url = "http://localhost:3000/todos";
  var response = await http.get(Uri.parse(url));
  print('Response status: ${response.statusCode}');
  var todos = convert.jsonDecode(response.body);
  print(todos[0]);
  print(todos[0]['id']);
  print(todos[0]['title']);
}
