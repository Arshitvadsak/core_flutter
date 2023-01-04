import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int qty = 0;
  var sum = 0;
  List<Map<dynamic, dynamic>> h1 = [];

  @override
  Widget build(BuildContext context) {
    double totalprice = 0;
    List l = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              size: 30,
              color: Colors.black,
            )),
        toolbarHeight: 70,
        elevation: 0,
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black26,
            backgroundImage: AssetImage("asset/images/person.png"),
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ...l
                      .map(
                        (e) => Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Row(
                            children:[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: e['fcolor'],
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white24,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: e['fimage'],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['fname'],
                                        style: TextStyle(
                                          color: e['ftxtcolor'],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      Text(
                                        e['fcountry'],
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        ("\$${e['fprice']}"),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.33,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue.shade100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "$qty",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    decoration: BoxDecoration(
                                                      boxShadow: <BoxShadow>[
                                                        BoxShadow(
                                                          color: Colors.black,
                                                          blurRadius: 2,
                                                        ),
                                                      ],
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            qty--;
                                                            if (qty < 0) {
                                                              qty = 0;
                                                            }
                                                          });
                                                        },
                                                        child: Icon(Icons
                                                            .horizontal_rule_outlined)),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: <BoxShadow>[
                                                        BoxShadow(
                                                          color: Colors.black,
                                                          blurRadius: 2,
                                                        ),
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            qty++;
// (qty > 0)
// ? qty*e['fprice']
//  : totalprice = 0;
                                                          });
                                                        },
                                                        child: Icon(Icons.add)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            " (kg)",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    color: Color(0xffbab63b),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total:",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white70,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Text(
                            "\$15.8",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.37,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          color: Color(0xff868426),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
