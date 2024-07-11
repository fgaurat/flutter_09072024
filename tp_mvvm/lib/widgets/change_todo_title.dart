import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/todo_view_model.dart';

class ChangeTodoTitle extends StatelessWidget {
  const ChangeTodoTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TodoViewModel vm = Provider.of<TodoViewModel>(context);
    return ElevatedButton(
        onPressed: () {
          vm.title = "Continuer à faire du Flutter";
        },
        child: const Text('Change Title'));
  }
}
