import 'package:flutter/material.dart';
import 'package:hello_world/counter_show_value.dart';
import 'package:hello_world/counter_update_value.dart';

class CounterRootState extends StatefulWidget {
  const CounterRootState({Key? key}) : super(key: key);

  @override
  State<CounterRootState> createState() => _CounterRootStateState();
}

class _CounterRootStateState extends State<CounterRootState> {
  int cpt = 0;

  inc() {
    setState(() {
      cpt++;
    });
  }

  dec() {
    setState(() {
      cpt--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CounterShowValue(value: cpt), CounterUpdateValue(onInc: inc,onDec:dec)],
    );
  }
}
