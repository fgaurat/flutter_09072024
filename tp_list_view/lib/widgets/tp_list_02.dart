import 'package:flutter/material.dart';
import "dart:developer" as developer;

class TpList02 extends StatelessWidget {
  const TpList02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> entries = List.generate(100, (index) => "Item $index");

    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          title: Text(entries[index]),
          onTap: () {
            developer.log("Click $index ${entries[index]}");
          },
        );
      },
    );
  }
}
