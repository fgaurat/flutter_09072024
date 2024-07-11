import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool show = true;

  toggle() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: toggle, child: const Text('Show/Hide')),
        Text('OK 1$show'),
        if (show) Text('OK 2 $show'),
      ],
    );
  }
}
