import 'package:counter/ui/counter/pages/page1.dart';
import 'package:flutter/material.dart';

class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({Key? key}) : super(key: key, home: const CounterPage1());
}