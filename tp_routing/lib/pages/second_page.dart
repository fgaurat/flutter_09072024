import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  navigate(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SecondPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Column(
        children: [
          const Text("SecondPage"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to HomePage',
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Le résultat");
              },
              child: const Text(
                'Back to FirsPage With Results',
              )),
        ],
      ),
    );
  }
}
