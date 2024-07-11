import 'package:flutter/material.dart';
import 'package:hello_world/counter_root_state.dart';
import 'package:hello_world/hello_world.dart';
import 'package:hello_world/say_hello.dart';
import 'package:hello_world/toggle.dart';
import 'package:hello_world/tp_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello App Bar"),
        ),
        // body: const TpLayout(),
        body: const Column(children: [
          HelloWorld(name: "Fred"),
          Toggle(),
          SayHello(),
          Divider(
            thickness: 5,
            color: Colors.black,
          ),
          CounterRootState(),
        ]),
      ),
    );
  }
}
