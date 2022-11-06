import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(5) {
    on<CounterIncEvent>((event, emit) {
      emit(state+1);
    });

    on<CounterDecEvent>(_decrement);
  }

  void _decrement(CounterDecEvent event, Emitter<int> emit) {
    emit(state-1);
  }
}
