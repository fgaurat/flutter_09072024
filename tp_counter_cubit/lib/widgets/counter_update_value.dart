import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_counter_cubit/cubit/counter_cubit.dart';

class CounterUpdateValue extends StatelessWidget {
  const CounterUpdateValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () => BlocProvider.of<CounterCubit>(context).increment(),
            child: const Text('+')),
        ElevatedButton(
            onPressed: () => BlocProvider.of<CounterCubit>(context).decrement(),
            child: const Text('-')),
      ],
    );
  }
}
