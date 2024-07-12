import 'package:flutter/material.dart';
import 'package:tp_unittest/models/todo.dart';
import 'package:tp_unittest/services/todo_service.dart';

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
        onPressed: () {},
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
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          color: Colors.red,
        ),
        key: ValueKey<String>("key_${todos[index].hashCode}"),
        onDismissed: (DismissDirection direction) {
          setState(() {
            TodoService.delete(todos[index]).then((_) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Todo Deleted')),
                );
              }
            });

            todos.removeAt(index);
          });
        },
        child: ListTile(
          title: Text(todos[index].title),
          onTap: () {},
        ),
      ),
    );
  }
}
