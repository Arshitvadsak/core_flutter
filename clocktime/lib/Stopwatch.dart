import 'package:flutter/material.dart';

class LiveTime extends StatefulWidget {
  const LiveTime({Key? key}) : super(key: key);

  @override
  State<LiveTime> createState() => _LiveTimeState();
}

class _LiveTimeState extends State<LiveTime> {
  @override
  int s = 0;
  int m = 0;
  int h = 0;

  bool timer = false;

  startSecound() {
    Future.delayed(const Duration(seconds: 1), () {
      if (timer) {
        setState(() {
          if (s == 60) {
            s = 0;
            if (m == 60) {
              m = 0;
              if (h == 24) {
                h = 0;
              } else {
                h++;
              }
            } else {
              m++;
            }
          } else {
            s++;
          }
          startSecound();
        });
      } else {}
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Container(
            child: Stack(
              children: [
                Center(
                  child: Text(
                    "$h : $m : $s",
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Transform.scale(
                    scale: 6,
                    child: CircularProgressIndicator(
                      value: s / 60,
                      // valueColor:const AlwaysStoppedAnimation(Colors.redAccent),
                      backgroundColor: Colors.black54,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 70, width: 120),
                    child: ElevatedButton(
                      child: Text(
                        "Start",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      onPressed: () {
                        setState(() {
                          timer = true;
                          startSecound();
                          // startHour();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(height: 80, width: 140),
                    child: ElevatedButton(
                      child: Text(
                        "Pause",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      onPressed: () {
                        setState(() {
                          timer = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(height: 90, width: 160),
                    child: ElevatedButton(
                      child: Text(
                        "Restart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      onPressed: () {
                        setState(() {
                          timer = true;
                          s = 0;
                          m = 0;
                          h = 0;
                          startSecound();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
