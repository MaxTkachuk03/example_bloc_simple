import 'package:example_bloc/bloc/bloc/counter_bloc.dart';
import 'package:example_bloc/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC example',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: 
        const MyHomePage(title: 'BLoC example'),
      ),
    );
  }
}
