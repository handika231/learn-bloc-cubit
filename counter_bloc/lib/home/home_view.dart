import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(const IncrementEvent());
            },
            tooltip: 'Increment',
            heroTag: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(const DecrementEvent());
            },
            heroTag: 'Decrement',
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
