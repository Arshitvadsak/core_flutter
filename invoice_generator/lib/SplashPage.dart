import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _Page1State();
}

class _Page1State extends State<Splash> {
  @override
  void initState() {
    super.initState();

    changeScreen();
  }

  changeScreen() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Container(
            child: Image.asset(
              "assets/image/android.png",
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            strokeWidth: 3,
            color: Colors.black54,
          ),
          const SizedBox(height: 20),
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
