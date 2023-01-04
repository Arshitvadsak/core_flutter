import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight
      // DeviceOrientation.landscapeLeft
      // DeviceOrientation.portraitDown
      //DeviceOrientation.portraitUp
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP"),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height:20),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Phone(),
                        ));
                  },
                  child: Text("P2")),
            ],
          ),
        ),
      ),
    );
  }
}
