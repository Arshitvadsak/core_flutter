import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
            height: 200,
            width: 390,
            color: Colors.black12,
          child: Text("Edit",style: TextStyle(fontSize: 30),

          ),
        ),
      ),
    );
  }
}
