import 'package:counter_bloc/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
