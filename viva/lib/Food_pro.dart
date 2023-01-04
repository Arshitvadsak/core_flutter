import 'dart:math';
import 'package:flutter/material.dart';

class Food_pro extends StatefulWidget {
  const Food_pro({Key? key}) : super(key: key);

  @override
  State<Food_pro> createState() => _Food_proState();
}

class _Food_proState extends State<Food_pro> {

  // var selected = 0;

  List<Map<dynamic,dynamic>> emptylist = [];

  var i = 0;
  var count = 0;
  var h = 0;

  List<Map> pro = [
    {
      'image': "assets/image/vagetable-removebg-preview.png",
      'foodName': "vegetabel",
    },
    {
      'image': "assets/image/fruits-removebg-preview.png",
      'foodName': "fruitss",
    },
    {
      'image': "assets/image/greens-removebg-preview.png",
      'foodName': "Greens",
    },
    {
      'image': "assets/image/mushrooms-removebg-preview.png",
      'foodName': "Mashrooms",
    },
  ];

  List<Map> fruits = [
    {
      'image': "assets/image/fruits/mango.png",
      'fruitsName': "Mango",
      'country': "Ecuador",
      'price': "﹩ 1.50",
      //'color': Colors.brown.shade300,
    },
    {
      'image': "assets/image/fruits/apple.png",
      'fruitsName': "apple",
      'country': "North America ",
      'price': "﹩ 2",
    },
    {
      'image': "assets/image/fruits/pear.png",
      'fruitsName': "Pear",
      'country': "USA",
      'price': "﹩ 4",
    },
    {
      'image': "assets/image/fruits/pineapple.png",
      'fruitsName': "pineapple",
      'country': "South America",
      'price': "﹩ 0.89",
    },
    {
      'image': "assets/image/fruits/watermelon.png",
      'fruitsName': "Watermelon",
      'country': "France",
      'price': "﹩ 3.31 ",
    },
  ];

  List<Map> vegetables = [
    {
      'image': "assets/image/vagetables/brinjal-removebg-preview.png",
      'vegetablesName': "Brinjal",
      'country': "",
      'price': "₹ 71.50",
    },
    {
      'image': "assets/image/vagetables/cheli-removebg-preview.png",
      'vegetablesName': "Chilly",
      'country': " ",
      'price': "₹ 61.50",
    },
    {
      'image': "assets/image/vagetables/onion-removebg-preview.png",
      'vegetablesName': "onion",
      'country': "",
      'price': "﹩ 2.68",
    },
    {
      'image': "assets/image/vagetables/potato-removebg-preview.png",
      'vegetablesName': "poteto",
      'country': "",
      'price': "﹩ 2.6",
    },
    {
      'image': "assets/image/vagetablesG7/tometo-removebg-preview.png",
      'vegetablesName': "tomato ",
      'country': "",
      'price': "﹩ 3.28",
    },
  ];
  List<Map> greens = [
    {
      'image': "assets/image/greens/chinese_cabbage-removebg-preview.png",
      'greens': "Cabbage",
      'country': "India",
      'price': "₹ 20",
    },
    {
      'image': "assets/image/greens/cobige-removebg-preview.png",
      'greens': "cabbage",
      'country': "Brassica oleracea",
      'price': "₹ 15.50",
    },
    {
      'image': "assets/image/greens/kantola-removebg-preview.png",
      'greens': "kantola",
      'country': "Asia Minor",
      'price': "﹩ 1.05",
    },
    {
      'image': "assets/image/greens/tinda-removebg-preview.png",
      'greens': "Tinda",
      'country': "China",
      'price': "﹩ 1",
    },
  ];
  List<Map> mushrooms = [
    {
      'image': "assets/image/mashrooms/Common_mushroom-removebg-preview.png",
      'mushrooms': "Common",
      'country': "India",
      'price': "₹ 24",
    },
    {
      'image': "assets/image/mashrooms/Conifer_Tuft_mushroom-removebg-preview.png",
      'mushrooms': "Conifer",
      'country': "Asia Minor",
      'price': "﹩ 2.05",
    },
    {
      'image': "assets/image/mashrooms/Poisonous_mushroom-removebg-preview.png",
      'mushrooms': "poisonous",
      'country': "China",
      'price': "﹩ 2",
    },
  ];

   @override
   Widget build(BuildContext context) {
    Random random = Random();

    // List<Color> myColors = [
    //   Colors.green.shade400,
    //   Colors.red.shade100,
    //   Colors.yellow.shade100,
    //   Colors.blue.shade200,
    //   Colors.amber.shade100,
    //   Colors.brown.shade100,
    //   Colors.greenAccent,
    //   Colors.deepPurple.shade100,
    //   Colors.purple.shade100,
    //   Colors.white10,
    //   Colors.orange.shade100,
    // ];

   // double h = MediaQuery.of(context).size.height;
   // double w = MediaQuery.of(context).size.width;

     return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Stack(
               children: [
                 Container(
                   height: 320,
                   width: 410,
                   decoration: const BoxDecoration(
                     color: Color(0xffF5CBA7),
                     borderRadius: BorderRadius.vertical(
                       bottom: Radius.circular(50),
                     ),
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 60),
                       Row(
                         children: [
                           const Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                               " : :",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 35,
                                 color: Colors.black87,
                               ),
                             ),
                           ),
                           SizedBox(width: 300),
                           Container(
                             height: 50,
                             width: 50,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Colors.white,
                             ),
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
                       SizedBox(height: 10),
                       Align(
                         alignment: Alignment.topCenter,
                         child: TextField(
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                           decoration: InputDecoration(
                             hintText: "🔍 Search foodsuffs",
                             hintStyle: const TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                             border: OutlineInputBorder(
                               borderSide: const BorderSide(),
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),
                         ),
                       ),
                       //  const Spacer(),
                       SizedBox(height: 10),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: pro
                               .map(
                                 (e) => InkWell(
                               onTap: () {
                                 setState(() {
                                   Navigator.pushNamed(context, '/myCart',
                                       arguments: e);
                                 });
                               },
                               child: Container(
                                 margin: EdgeInsets.all(10),
                                 height: 90,
                                 width: 90,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(
                                       color: Colors.black, width: 2),
                                 ),
                                 child: Column(
                                   crossAxisAlignment:
                                   CrossAxisAlignment.center,
                                   children: [
                                     ClipRect(
                                       child: Image(
                                         image: AssetImage("${e['image']}"),
                                         height: 60,
                                         width: 60,
                                       ),
                                     ),
                                     Text(
                                       "${e['foodName']}",
                                       style: const TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           )
                               .toList(),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               children: const [
                 Text(
                   "Popular Foodstuffs",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 30,
                   ),
                 ),
                 Text(
                   "       View All",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
               ],
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: fruits
                       .map(
                         (e) => Container(
                       margin: const EdgeInsets.all(10),
                       height: 270,
                       width: 200,
                       decoration: BoxDecoration(
                          color: Colors.blue[200],
                         //color: myColors[random.nextInt(myColors.length)],
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         children: [
                           const Text(
                             "fruits",
                             style: const TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           ClipRect(
                             child: Image(
                               image: AssetImage("${e['image']}"),
                               height: 150,
                               width: 150,
                             ),
                           ),
                           Text(
                             "${e['fruitsName']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "${e['country']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 20,
                               color: Colors.black,
                             ),
                           ),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceAround,
                             children: [
                               Text(
                                 "${e['price']}",
                                 style: const TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25,
                                   color: Colors.black,
                                 ),
                               ),

                               InkWell(
                                 onTap: () {
                                   setState(() {
                                     Navigator.of(context)
                                         .pushNamed('my_Cart');
                                   });
                                 },
                                 child: Container(
                                   decoration: const BoxDecoration(
                                     color: Colors.yellow,
                                   ),
                                   child: Text(
                                     "+",
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 30,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   )
                       .toList(),
                 ),
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: vegetables
                       .map(
                         (e) => Container(
                       margin: const EdgeInsets.all(10),
                       height: 280,
                       width: 200,
                       decoration: BoxDecoration(
                         color: Colors.greenAccent[200],
                         //color: myColors[random.nextInt(myColors.length)],
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         children: [
                           const Text(
                             "vegetables",
                             style: const TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           ClipRect(
                             child: Image(
                               image: AssetImage("${e['image']}"),
                               height: 150,
                               width: 150,
                             ),
                           ),
                           Text(
                             "${e['vegetablesName']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "${e['country']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 20,
                               color: Colors.black,
                             ),
                           ),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: [
                               Text(
                                 "${e['price']}",
                                 style: const TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25,
                                   color: Colors.black,
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   setState(() {});
                                 },
                                 child: Container(
                                   decoration: const BoxDecoration(
                                     color: Colors.lightGreenAccent,
                                   ),
                                   child: Text(
                                     "+",
                                     style: TextStyle(
                                       fontSize: 30,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   )
                       .toList(),
                 ),
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: greens
                       .map(
                         (e) => Container(
                       margin: const EdgeInsets.all(10),
                       height: 280,
                       width: 200,
                       decoration: BoxDecoration(
                          color: Colors.deepPurple[200],
                         //color: myColors[random.nextInt(myColors.length)],
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         children: [
                           const Text(
                             "greens",
                             style: const TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           ClipRect(
                             child: Image(
                               image: AssetImage("${e['image']}"),
                               height: 150,
                               width: 150,
                             ),
                           ),
                           Text(
                             "${e['greens']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "${e['country']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 20,
                               color: Colors.black,
                             ),
                           ),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: [
                               Text(
                                 "${e['price']}",
                                 style: const TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25,
                                   color: Colors.black,
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   setState(() {});
                                 },
                                 child: Container(
                                   decoration: const BoxDecoration(
                                     color: Colors.lightGreenAccent,
                                   ),
                                   child: Text(
                                     "+",
                                     style: TextStyle(
                                       fontSize: 30,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ).toList(),
                 ),
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: mushrooms
                       .map(
                         (e) => Container(
                       margin: const EdgeInsets.all(10),
                       height: 280,
                       width: 200,
                       decoration: BoxDecoration(
                       color: Colors.amberAccent[100],
                        // color: myColors[random.nextInt(myColors.length)],
                         borderRadius: BorderRadius.circular(20),
                       ),
                       child: Column(
                         children: [
                           const Text(
                             "Mushrooms",
                             style: const TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           ClipRect(
                             child: Image(
                               image: AssetImage("${e['image']}"),
                               height: 150,
                               width: 150,
                             ),
                           ),
                           Text(
                             "${e['mushrooms']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 30,
                               color: Colors.black,
                             ),
                           ),
                           Text(
                             "${e['country']}",
                             style: const TextStyle(
                               fontWeight: FontWeight.w400,
                               fontSize: 20,
                               color: Colors.black,
                             ),
                           ),
                           Row(
                             mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                             children: [
                               Text(
                                 "${e['price']}",
                                 style: const TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 25,
                                   color: Colors.black,
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   setState(() {});
                                 },
                                 child: Container(
                                   decoration: const BoxDecoration(
                                     color: Colors.lightGreenAccent,
                                   ),
                                   child: Text(
                                     "+",
                                     style: TextStyle(
                                       fontSize: 30,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ).toList(),
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
}
