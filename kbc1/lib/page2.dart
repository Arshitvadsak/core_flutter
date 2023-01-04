import 'package:flutter/material.dart';
import 'package:kbc1/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/fire-cracker1.png"),
            ),
            const Text(
              "Your Answer is Correct ",
              style: TextStyle(color: Color(0xff76323e), fontSize: 25),
            ),
            const SizedBox(height: 50),
            Text(
              "You Won\n ₹${Listpage.wonPrice}",
              style: const TextStyle(color: Color(0xffc78640), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Listpage.initialQuestion++;
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/', (route) => false);
                    if (Listpage.allQuestions.length ==
                        Listpage.initialQuestion) {
                      Navigator.of(context).pushNamed('page3');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white.withOpacity(0.2),
                    onPrimary: Colors.white.withOpacity(0.8),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
