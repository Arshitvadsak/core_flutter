import 'package:clocktime/Clock.dart';
import 'package:clocktime/ThirdPage.dart';
import 'package:flutter/material.dart';
import 'Stopwatch.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Clock(),
  ));
}

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  var time = DateTime.now();

  int _currentIndex = 0;
  final List<Widget> _children = [
    LiveTime(),
    SecondPage(),
    ThirdPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clock",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.white,
        iconSize: 40,
        selectedFontSize: 20,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_sharp),
            label: 'stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse_outlined),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      backgroundColor: Colors.white60,
    );
  }
}
