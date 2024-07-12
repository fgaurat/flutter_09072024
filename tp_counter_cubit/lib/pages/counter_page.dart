import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_counter_cubit/cubit/counter_cubit.dart';
import 'package:tp_counter_cubit/widgets/counter_show_value.dart';
import 'package:tp_counter_cubit/widgets/counter_update_value.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterCubit'),
      ),
      body: BlocProvider(
        create: (_) => CounterCubit(),
        child: const Column(
          children: [CounterShowValue(), CounterUpdateValue()],
        ),
      ),
    );
  }
}
