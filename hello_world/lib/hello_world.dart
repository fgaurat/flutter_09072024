import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class HelloWorld extends StatelessWidget {
  final String name;

  const HelloWorld({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Hello $name");
  }
}
