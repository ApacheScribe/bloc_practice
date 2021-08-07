import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // add
  void increment() => emit(state + 1);

  // reduce
  void decrement() => emit(state - 1);
}
