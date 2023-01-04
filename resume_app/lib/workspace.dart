import 'package:flutter/material.dart';
import 'package:resume_app/contect.dart';
import 'main.dart';

//import 'package:resume/carrier.dart';
//import 'package:resume/contects.dart';
//import 'package:resume/main.dart';
class WorkSpace extends StatefulWidget {
  const WorkSpace({Key? key}) : super(key: key);

  @override
  State<WorkSpace> createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Resume()),
                          );
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 45,
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "Resume Workspace",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/contact-books.png",
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Contect info",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 100),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contacts()),
                              );
                            },
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/briefcase.png",
                          height: 40,
                          width: 60,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Carrier Objective",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 60),
                        IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => Carrier()),
                              // );
                            },
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/user.png",
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Personal Details",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 60),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/mortarboard.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Eduction",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 120),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/experience.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Experiences",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 90),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/declaration.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Technical Skills",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 60),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/open-book.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Interest/Hobbies",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 50),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/project.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Projects ",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 120),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/achievement.png",
                          height: 60,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Achievement ",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 80),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/handshake.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "References ",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 90),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/declaration.png",
                          height: 50,
                          width: 70,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          "Declaration ",
                          style: TextStyle(
                              fontSize: 20,
// fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(width: 90),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}
