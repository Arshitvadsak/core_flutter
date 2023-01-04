import 'package:flutter/material.dart';
import 'package:kbc1/page1.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/lose.png"),
            ),
            const SizedBox(height: 40),
            const Text(
              "oops! \n\n Sorry, You Lost the Game :(",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white.withOpacity(0.2),
                onPrimary: Colors.white.withOpacity(0.8),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                setState(() {
                  Listpage.initialQuestion = 0;
                  Listpage.wonPrice = 500;
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                });
              },
              icon: const Icon(
                Icons.refresh,
                size: 40,
                color: Colors.white,
              ),
              label: const Text("Try Again",
                  style: TextStyle(
                    fontSize: 25,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
