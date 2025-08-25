import 'package:app_iti/module/counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterIntialState(0));

  // singleton pattren
  static CounterCubit get(context) => BlocProvider.of(context);




  void increment() {
    final current =
        (state is CounterChanged)
            ? (state as CounterChanged).counter
            : (state as CounterIntialState).counter;

      emit(CounterChanged(current + 1));
  }


  void decrement(){
    final current =
        (state is CounterChanged)
            ? (state as CounterChanged).counter
            : (state as CounterIntialState).counter;

      emit(CounterChanged(current - 1));
  }
}
