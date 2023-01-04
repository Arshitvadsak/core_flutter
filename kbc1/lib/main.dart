import 'package:flutter/material.dart';
import 'dart:math';
import 'package:kbc1/page1.dart';
import 'package:kbc1/page2.dart';
import 'package:kbc1/page3.dart';
import 'package:kbc1/page4.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'page2': (context) => const Page2(),
        'page4': (context) => const Page4(),
        'page3': (context) => const Page3(),
      },
    ),
  );
}
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  Random random = Random();
  int randomColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
//mainAxisAlignment: MainAxisAlignment.center,
        children: [
//question
          IndexedStack(
            index: Listpage.initialQuestion,
            children: Listpage.allQuestions
                .map(
                  (e) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 350,
                      width: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Listpage.color,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "${e['question']}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              final Random random = Random();
                              final randomColor = random.nextInt(1000);
                              Listpage.color =
                                  Color.fromRGBO(255, randomColor, 164, 1);
                              if (e['response'] == "A") {
                                Listpage.wonPrice =
                                    Listpage.wonPrice + Listpage.wonPrice;
                                Navigator.of(context).pushNamed('page2');
                              } else {
                                Navigator.of(context).pushNamed('page4');
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            onPrimary: Colors.white.withOpacity(0.8),
                          ),
                          child: Text(
                            "${e['choice 1']}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              final Random random = Random();
                              final randomColor = random.nextInt(1000);
                              Listpage.color =
                                  Color.fromRGBO(200, randomColor, 45, 1);
                              if (e['response'] == "B") {
                                Listpage.wonPrice =
                                    Listpage.wonPrice + Listpage.wonPrice;
                                Navigator.of(context).pushNamed('page2');
                              } else {
                                Navigator.of(context).pushNamed('page4');
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            onPrimary: Colors.white.withOpacity(0.8),
                          ),
                          child: Text(
                            "${e['choice 2']}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              final Random random = Random();
                              final randomColor = random.nextInt(700);
                              Listpage.color =
                                  Color.fromRGBO(200, randomColor, 78, 1);
                              if (e['response'] == "C") {
                                Listpage.wonPrice =
                                    Listpage.wonPrice + Listpage.wonPrice;
                                Navigator.of(context).pushNamed('page2');
                              } else {
                                Navigator.of(context).pushNamed('page4');
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            onPrimary: Colors.white.withOpacity(0.8),
                          ),
                          child: Text(
                            "${e['choice 3']}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              final Random random = Random();
                              final randomColor = random.nextInt(500);
                              Listpage.color =
                                  Color.fromRGBO(200, randomColor, 98, 1);
                              if (e['response'] == "D") {
                                Listpage.wonPrice =
                                    Listpage.wonPrice + Listpage.wonPrice;
                                Navigator.of(context).pushNamed('page2');
                              } else {
                                Navigator.of(context).pushNamed('page4');
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.2),
                            onPrimary: Colors.white.withOpacity(0.8),
                          ),
                          child: Text(
                            "${e['choice 4']}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}
