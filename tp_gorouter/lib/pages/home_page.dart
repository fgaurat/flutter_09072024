import 'package:flutter/material.dart';
import 'package:tp_gorouter/pages/first_page.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static String route = "/";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          const Text("HomePage"),
          ElevatedButton(
              // onPressed: () => context.go(FirstPage.route),
              onPressed: () => context.push(FirstPage.route),
              child: const Text("FirstPage"))
        ],
      ),
    );
  }
}
