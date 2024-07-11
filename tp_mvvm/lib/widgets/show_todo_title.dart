import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/todo_view_model.dart';

class ShowTodoTitle extends StatelessWidget {
  const ShowTodoTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TodoViewModel vm = Provider.of<TodoViewModel>(context);

    return Text(vm.title);
  }
}
