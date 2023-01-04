import 'package:flutter/material.dart';
import 'package:kbc1/page1.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
              child: Image.asset("assets/images/fire-cracker1.png"),
            ),
            const SizedBox(height: 40),
            Text(
              "Congratulations!! \n\nYou Won\n ₹${Listpage.wonPrice}",
              style: const TextStyle(color: Colors.white, fontSize: 25),
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
              label: const Text("Restart",
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
