import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  static String route = "/first";

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          const Text("FirstPage"),
          ElevatedButton(
              onPressed: () =>
                  context.goNamed("hello", pathParameters: {"name": "Fred"}),
              child: const Text("Hello Fred"))
        ],
      ),
    );
  }
}
