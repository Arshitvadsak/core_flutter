import 'package:flutter/material.dart';
import 'globals.dart';

class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {
     // num1 = int.parse(Globals.lastcost.toString());
     // num2 = int.parse(Globals.price.toString());
      //result = num1! + num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 85,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 70,
                  width: 85,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Item\nCost",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 70,
                  width: 85,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Quantity",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 70,
                  width: 85,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Actoin",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 85,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${Globals.firstname}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 85,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child:  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "${Globals.lastcost}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 85,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "${Globals.price}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 85,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  "Sub Total",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "100",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "GST 18%",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "18.0",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "118.0",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    child: const Center(
                      child: Text(
                        "Generate",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("ap");
                  },
                  splashColor: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.save),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
