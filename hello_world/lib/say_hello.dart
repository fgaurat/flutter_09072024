import 'package:flutter/material.dart';

class SayHello extends StatefulWidget {
  const SayHello({Key? key}) : super(key: key);

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {
  String name = "";

  setName(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your name',
          ),
          // onChanged: setName,
          onSubmitted: setName,
        ),
        Text("Hello $name"),
      ],
    );
  }
}
