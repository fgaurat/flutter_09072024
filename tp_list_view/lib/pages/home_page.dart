import 'package:flutter/material.dart';
import 'package:tp_list_view/widgets/tp_list_02.dart';
import 'package:tp_list_view/widgets/tp_list_03.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TpListView")),
      body: const Center(
        child: TpList03(),
      ),
    );
  }
}
