import 'package:flutter/material.dart';
import 'package:hello_world/hello_world.dart';
import 'package:hello_world/toggle.dart';

class TpLayout extends StatelessWidget {
  const TpLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return build06(context);
  }

  Widget build01(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HelloWorld(name: "Fred"),
          const Toggle(),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: const Center(child: Text("Hello World")),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.lightGreen,
            child: const Center(child: Text("Hello World")),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: const Center(child: Text("Hello World")),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.orange,
            child: const Center(child: Text("Hello World")),
          ),
        ],
      ),
    );
  }

  Widget build02(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 100,
          color: Colors.blue,
          child: const Center(child: Text("Hello World")),
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.red,
          child: const Center(child: Text("Hello World")),
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.green,
          child: const Center(child: Text("Hello World")),
        ),
      ],
    );
  }

  Widget build03(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: const Center(child: Text("Hello World")),
        ),
        const SizedBox(height: 20),
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: const Center(child: Text("Hello World")),
        ),
        const SizedBox(height: 40),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
          child: const Center(child: Text("Hello World")),
        ),
      ],
    );
  }

  Widget build04(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: const Center(child: Text("Hello World")),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: const Center(child: Text("Hello World")),
        ),
        const Spacer(flex: 3),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
          child: const Center(child: Text("Hello World")),
        ),
      ],
    );
  }

  Widget build05(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
              width: 300,
              color: Colors.blue,
              child: const Center(child: Text("Hello World"))),
        ),
        Expanded(
          flex: 2,
          child: Container(
              width: 300,
              color: Colors.orange,
              child: const Center(child: Text("Hello World"))),
        ),
        Expanded(
          flex: 1,
          child: Container(
              width: 300,
              color: Colors.red,
              child: const Center(child: Text("Hello World"))),
        ),
      ],
    );
  }

  Widget build06(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: const Center(child: Text("Hello World")),
      ),
    );
  }
}
