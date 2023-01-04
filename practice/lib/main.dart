import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/page%202.dart';
import 'package:practice/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
       //DeviceOrientation.landscapeRight
      // DeviceOrientation.landscapeLeft
      // DeviceOrientation.portraitDown
       DeviceOrientation.portraitUp
    ]);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "practice",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page1(),
                      ));
                },
                child: Text("P1")),
            ElevatedButton(onPressed: () {}, child: Text("P2")),
            SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
