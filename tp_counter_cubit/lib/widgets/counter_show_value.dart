import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_counter_cubit/cubit/counter_cubit.dart';

class CounterShowValue extends StatelessWidget {
  const CounterShowValue({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(builder: (context, state) {
      return Text("Count : $state");
    });
  }
}
