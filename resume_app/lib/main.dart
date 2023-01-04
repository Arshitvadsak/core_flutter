import 'package:flutter/material.dart';
import 'package:resume_app/workspace.dart';
//import 'package:resume/workspace.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Resume(),
    ),
  );
}
class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);
  @override
  State<Resume> createState() => _ResumeState();
}
class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Resume builder",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 415,
            color: Colors.blue,
            child: Text(
              "Resume",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image.asset("assets/images/open-cardboard-box.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "No Resumes + create New Resume.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WorkSpace()),
          );
        },
        child: Icon(Icons.add,size: 35),
      ),
    );
  }
}
