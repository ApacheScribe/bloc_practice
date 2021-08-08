import 'package:counter/counter/bloc/CounterCubit.dart';
import 'package:counter/counter/ui/views/counter_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Container(
        child: CounterView(),
      ),
    );
  }
}
