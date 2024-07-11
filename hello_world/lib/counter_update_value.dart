import 'package:flutter/material.dart';

class CounterUpdateValue extends StatelessWidget {
  final Function onInc;
  final Function onDec;
  const CounterUpdateValue({Key? key, required this.onInc, required this.onDec})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: () {
              onInc();
            },
            child: const Text('+')),
        ElevatedButton(
            onPressed: () {
              onDec();
            },
            child: const Text('-')),
      ],
    );
  }
}
