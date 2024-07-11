import 'package:flutter/material.dart';

class CounterShowValue extends StatelessWidget {
  final int value;
  const CounterShowValue({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Cpt : $value");
  }
}
