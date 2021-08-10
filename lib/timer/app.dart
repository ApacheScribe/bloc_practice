import 'package:counter/timer/ui/pages/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromRGBO(109, 234, 255, 1),
          accentColor: Color.fromRGBO(72, 74, 126, 1),
          brightness: Brightness.dark),
      title: 'Timer',
      home: const TimerPage(),
    );
  }
}
