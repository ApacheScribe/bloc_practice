import 'package:counter/counter/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';

class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({Key? key}) : super(key: key, home: const CounterPage());
}
