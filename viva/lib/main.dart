import 'package:flutter/material.dart';
import 'package:viva/Food_pro.dart';
import 'package:viva/my_cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Food(),
        'Food_pro': (context) => const Food_pro(),
        'My_Cart': (context) => const ThirdPage(),
      },
    ),
  );
}

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Get \n Organic Food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Find the freshest food and get \n free delivery your town",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.all(20),
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('Food_pro');
                    });
                  },
                  child: Text(
                    "Get Stared",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: h * 0.56,
            width: w * 0.8,
            child: const ClipRect(
              child: Image(
              image: AssetImage(
              "assets/image/food_g-removebg-preview.png",
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffF5CBA7 ),
    );
  }
}
