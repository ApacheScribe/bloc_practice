import 'package:counter/bloc/CounterCubit.dart';
import 'package:counter/ui/counter/pages/views/view1.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage1 extends StatelessWidget {
  const CounterPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Container(
        child: CounterView1(),
      ),
    );
  }
}
