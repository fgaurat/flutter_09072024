import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todolist/models/todo.dart';
import 'package:tp_http_todolist/services/todo_service.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({super.key});

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoForm'),
      ),
      body: getForm(context),
    );
  }

  Form getForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: titleController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // );
                String title = titleController.text;

                Todo todo = Todo(title, false);
                TodoService.save(todo).then(
                  (value) {
                    GoRouter.of(context).pop();
                  },
                );
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}
