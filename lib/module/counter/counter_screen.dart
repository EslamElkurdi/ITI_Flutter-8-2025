import 'package:app_iti/module/counter/cubit/counter_cubit.dart';
import 'package:app_iti/module/counter/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterStates>(
        builder: (context, state) {
          int counter = 0;
          if (state is CounterIntialState) counter = state.counter;
          if (state is CounterChanged) counter = state.counter;

          return Scaffold(
            appBar: AppBar(title: Text("Counter Screen")),

            body: Center(
              child: Text(
                "$counter",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),

            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () => CounterCubit.get(context).decrement(),
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 12),
                FloatingActionButton(
                  onPressed: () => CounterCubit.get(context).increment(),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
