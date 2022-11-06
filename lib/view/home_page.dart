import 'package:example_bloc/bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the buttons:',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            BlocBuilder<CounterBloc, int>(
              //! Якщо є це параметр то для зміни стану викроистовується context.read<CounterBloc>()
              // bloc: CounterBloc(), 
              builder: (context, state) {
                return Text(
                  // context.read<CounterBloc>().state.toString(),
                  state.toString(),
                  style: Theme.of(context).textTheme.headline2,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      bloc.add(CounterIncEvent());
                    });
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.plus_one),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      bloc.add(CounterDecEvent());
                    });
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.exposure_minus_1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
