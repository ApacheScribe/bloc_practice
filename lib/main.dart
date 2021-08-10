import 'package:counter/counter/app.dart';
import 'package:counter/counter/bloc/CounterObserver.dart';
import 'package:counter/timer/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(TimerApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(),
    );
  }
}
