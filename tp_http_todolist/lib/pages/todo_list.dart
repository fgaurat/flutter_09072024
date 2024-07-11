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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push("/add");
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () => Future(() => setState(() {})),
        child: FutureBuilder<List<Todo>>(
          future: TodoService.findAll(),
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
