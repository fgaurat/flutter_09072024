import 'package:flutter/material.dart';
import 'package:tp_mvvm/models/todo.dart';

class TodoViewModel extends ChangeNotifier {
  final Todo _todo;

  TodoViewModel(this._todo);
  
  String get title => _todo.title;
  
  set title(String t) {
    _todo.title = t;
    notifyListeners();
  }
}
