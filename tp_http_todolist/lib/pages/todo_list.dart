import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todolist/models/todo.dart';
import 'package:tp_http_todolist/services/todo_service.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late Future<List<Todo>> _todosFuture;

  @override
  void initState() {
    super.initState();
    _todosFuture = TodoService.findAll();
  }

  void _refreshTodos() {
    setState(() {
      _todosFuture = TodoService.findAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push("/add").then(
                (value) => _refreshTodos(),
              );
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _refreshTodos();
        },
        child: FutureBuilder<List<Todo>>(
          future: _todosFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return getListView(snapshot);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  ListView getListView(AsyncSnapshot<List<Todo>> snapshot) {
    List<Todo> todos = snapshot.data ?? [];
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(todos[index].title),
        onTap: () {
          GoRouter.of(context).push("/detail", extra: todos[index]);
        },
      ),
    );
  }
}
