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
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Phone(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.brown,
              child: Icon(
                Icons.ice_skating,
                size: 100,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
