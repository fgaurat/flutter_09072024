import 'package:flutter/material.dart';
import 'package:tp_routing/pages/second_page.dart';
import "dart:developer" as developer;

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          const Text("FirstPage"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back',
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                  (route) {
                    return route.isFirst;
                  },
                );
              },
              child: const Text(
                'Got to SecondPage',
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ))
                    .then((value) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('The value : $value'),
                          ),
                        ));
              },
              child: const Text(
                'Got to SecondPage With Results',
              )),
        ],
      ),
    );
  }
}
