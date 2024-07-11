import 'package:flutter/material.dart';
import "dart:developer" as developer;

class TpList03 extends StatelessWidget {
  const TpList03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> urls =
        List.generate(100, (index) => "https://robohash.org/$index");

    return ListView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(urls[index])),
          trailing: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          title: Text("Robot $index"),
          onTap: () {},
        );
      },
    );
  }
}
