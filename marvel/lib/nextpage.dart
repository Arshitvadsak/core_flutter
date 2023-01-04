import 'package:flutter/material.dart';

class Captain extends StatefulWidget {
  const Captain({Key? key}) : super(key: key);

  @override
  State<Captain> createState() => _CaptainState();
}

class _CaptainState extends State<Captain> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> value =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: const Color(0xff10002b),
        title: const Text(
          "Marvel Character",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: value['herophoto'],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    value['hero'],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Text(
                    value['heroname'],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
// height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
                color: Colors.white,
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  value['herodetails'],
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
