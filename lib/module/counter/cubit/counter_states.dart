abstract class CounterStates {}

class CounterIntialState extends CounterStates {

  final int counter;
  CounterIntialState(this.counter);
}

class CounterChanged extends CounterStates {

  final int counter;
  CounterChanged(this.counter);
}