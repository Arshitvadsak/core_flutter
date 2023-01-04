import 'package:flutter/material.dart';
import 'package:kbc/quizpage.dart';
//import 'package:p20_10/screens/quizz_screen.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var a1 = Colors.black54;
  var b1 = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color:  Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " Let's Play KBC Quiz,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Enter your information below",
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xff0C1542),
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter You Name",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            border: const OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    color:  Colors.grey,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                          child: const Center(
                            child: Text(
                              "Select Gender",
                              style:
                              TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (a1 == Colors.black54) {
                                    a1 = Colors.white54;
                                    b1=Colors.black54;
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: a1,
                                backgroundImage:
                                const AssetImage("asset/images/h1.png"),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (b1 == Colors.black54) {
                                    b1 = Colors.white54;
                                    a1=Colors.black54;
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: b1,
                                backgroundImage:
                                const AssetImage("asset/images/h2.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xff0C1542),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const QuizzScreen(),
                                ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Play Quiz",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class AppColor {
  static final h1Color = const Color(0xFF252c4a);
  static final h2Color = const Color(0xFF117eeb);
}