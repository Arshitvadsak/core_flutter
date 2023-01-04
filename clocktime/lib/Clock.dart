import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnalogClock(
        decoration: BoxDecoration(
            border: Border.all(width: 30, color: Colors.black38),
            color: Colors.white,
            shape: BoxShape.circle),
      ),
    );
  }
}
