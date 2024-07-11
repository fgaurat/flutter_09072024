import 'package:flutter/material.dart';
import 'package:tp_routing/pages/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  navigate(context) {
    Navigator.of(context).push(
      MaterialPageRoute(

        builder: (context) => const FirstPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          const Text("Hello"),
          ElevatedButton(
              onPressed: () {
                navigate(context);
              },
              child: const Text("Go to FirstPage"))
        ],
      ),
    );
  }
}
