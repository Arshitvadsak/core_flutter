import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class ResultScreen extends StatefulWidget {
  int score;

  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C1542),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("asset/images/h1_1.png"),
            height: 240,
            width: 240,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "\nCongratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ));
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                color: AppColor.h2Color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Repeat the quizz",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
