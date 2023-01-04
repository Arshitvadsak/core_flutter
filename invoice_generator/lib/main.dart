import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/Shopping.dart';
import 'package:invoice_generator/Purchase.dart';
import 'package:invoice_generator/SplashPage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Invoice App",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: getselectedwidget(index: _currentIndex),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        height: 60,
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
        index: _currentIndex,
        backgroundColor: Colors.greenAccent,
        items: const [
          Icon(Icons.home),
          Icon(Icons.shopping_cart),
          Icon(Icons.sell_outlined),
        //  Icon(Icons.pause),
        ],
      ),
    );
  }

  Widget getselectedwidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const LivePage();
        break;
       case 1:
         widget = const Purchase();
         break;
       // case 2:
       //   widget = const Pageview();
       //   break;
      default:
        widget = const Splash();
    }
    return widget;
  }
}
