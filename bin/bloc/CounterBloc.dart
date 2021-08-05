import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  // Tip: async* means the function is an async generator which is capable of emitting states via the yield keyword.
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
      default:
    }
  }

  // observe (and maybe react) to changes to this bloc
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    // print("Change Report from CounterBloc" + change.toString() + "\n");
  }

  // observe transitions
  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print('Transition Report from CounterBloc: ' + transition.toString());
  }
}
