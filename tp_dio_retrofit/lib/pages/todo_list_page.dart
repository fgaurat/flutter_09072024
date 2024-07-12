import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_dio_retrofit/models/todo.dart';
import 'package:tp_dio_retrofit/services/todo_service.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  late TodoService _todoService;

  @override
  void initState() {
    super.initState();
    _todoService = TodoService(Dio());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: _todoService.getTodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].title),
                trailing: Checkbox(
                  value: snapshot.data![index].completed,
                  // onChanged: (value) async {
                  //   await _todoService.updateTodoPart(
                  //       snapshot.data![index].id!, {'completed': value});
                  //   setState(() {});
                  // },
                  onChanged: (value) {
                    _todoService.updateTodoPart(
                        snapshot.data![index].id!, {'completed': value}).then(
                      (value) {
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
