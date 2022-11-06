part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncEvent extends CounterEvent{}

class CounterDecEvent extends CounterEvent{}