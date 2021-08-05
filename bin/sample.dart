import 'package:bloc/bloc.dart';

import 'bloc/CounterBloc.dart';
import 'bloc/CounterCubit.dart';
import 'bloc/SimpleBlocObserver.dart';

// no delay
void cubit1() {
  final cubit = CounterCubit(5);

  // print('Hello world!');
  print('Enter Bloc (Cubit); \nInitial State: ' + cubit.state.toString());
  print('-------------------');
  cubit.minus();
  print('after minus 1: ' + cubit.state.toString());

  cubit.plus();
  print('after plus 1: ' + (cubit.state).toString());

  print("Cubmit closed ... ");
  cubit.close();
}

// has delay"
void cubit2() async {
  final cubit = CounterCubit(5);

  final subscription = cubit.stream.listen(print);
  print('Create subscription: ' + subscription.toString());

  cubit.plus();
  print("Increment by 1: " + cubit.state.toString());

  print('Waiting for 5 second(s) ? ');
  await Future.delayed(Duration(seconds: 5));
  print('Waited for 5 second(s) ! ');

  await subscription.cancel();
  print('Cancelled subscription !');

  await cubit.close();
  print('Close cubit !');
}

// to observe changes in the cubit (override the class' onchange )
void cubit3() {
  CounterCubit(10)
    ..plus()
    ..close();
}

// Note: await Future.delayed(Duration.zero) is added to ensure we wait for the next event-loop iteration (allowing mapEventToState to process the increment event).
void cubit4() async {
  // get bloc
  final bloc = CounterBloc(10);

  // subscribe to it and call callback -on- event
  bloc.stream.listen((event) {
    print("\nSubscriber/Listener msg: " + event.toString());
  });

  // print initial state; then change state by submitting event to event listener
  bloc.add(CounterEvent.increment);
  // bloc.add(CounterEvent.decrement);
  // bloc.add(CounterEvent.decrement);

  // without this line, the subscription would be closed synchronously (before next line which shows us the new state; blocObserver is unaffected)
  await Future.delayed(Duration.zero);

  // close the bloc
  await bloc.close();
}

void main(List<dynamic> args) async {
  Bloc.observer = SimpleBlocObserver();
  cubit4();
}
