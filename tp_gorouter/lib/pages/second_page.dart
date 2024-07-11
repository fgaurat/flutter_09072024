import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static String route = "/second/:name";
  final String name;

  const SecondPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Text("SecondPage $name"),
    );
  }
}
