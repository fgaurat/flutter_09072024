import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tp_dio_retrofit/models/todo.dart';

part 'todo_service.g.dart';

@RestApi(baseUrl: "http://10.0.2.2:3000")
abstract class TodoService {
  factory TodoService(Dio dio, {String baseUrl}) = _TodoService;

  @GET('/todos')
  Future<List<Todo>> getTodos();

  @GET('/todos/{id}')
  Future<Todo> getTodo(@Path('id') int id);

  @DELETE('/todos/{id}')
  Future<void> deleteTodo(@Path() int id);

  @POST('/todos')
  Future<Todo> createTodo(@Body() Todo todo);

  @PATCH('/todos/{id}')
  Future<Todo> updateTodoPart(@Path() int id, @Body() Map<String, dynamic> map);

  @PUT('/todos/{id}')
  Future<Todo> updateTodo(@Path() int id, @Body() Todo todo);
}
