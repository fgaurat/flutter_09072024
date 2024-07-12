import 'package:flutter/material.dart';
import 'package:tp_sqflite/models/todo.dart';
import 'package:tp_sqflite/models/todo_dao.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  TodoDAO dao = TodoDAO();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: dao.getTodoList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].title),
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
