import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Instagram(),
    ),
  );
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.lock_outline, size: 30),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box_outlined,
                    size: 35,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  )),
            ],
          )
        ],
        title: const Text(
          "arshit_vadsak_",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      "assets/image/arshit_vadsak_-20221210-0007.jpg",
                    ),
                  ),
                  Text(
                    "     4\n  Post",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "       1M\n  Followers",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "         4\n  Following",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Arshit\nAries♈\n📍 Surat \n See though",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 260,
                    child: Center(
                        child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white10,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                          border: Border.all(color: Colors.green, width: 2),
                        ),
                      ),
                      const Text(
                        "...",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 50,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                            border: Border.all(color: Colors.green, width: 2)),
                      ),
                      const Text(
                        "New",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 70,
                width: 410,
                child: Row(
                  children: [
                    SizedBox(width: 70),
                    Icon(
                      Icons.border_all,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 140),
                    Icon(
                      Icons.person_pin_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 120,
                    child: Image.asset(
                      "assets/image/arshit_vadsak_-20221210-0001.jpg",
                    ),
                  ),
                  Container(
                    height: 135,
                    width: 120,
                    child: Image.asset(
                      "assets/image/arshit_vadsak_-20221210-0002.jpg",
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 120,
                    child: Image.asset(
                      "assets/image/arshit_vadsak_-20221210-0004.jpg",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    height: 130,
                    width: 120,
                    child: Image.asset(
                      "assets/image/arshit_vadsak_-20221210-0005.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
