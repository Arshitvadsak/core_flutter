import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'globals.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: call(),
    ),
  );
}

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  bool val = false;
  bool switchval = false;

  @override
  Widget build(BuildContext context) {
    dynamic A1 = ModalRoute.of(context)!.settings.arguments;
    makecall() async {
      final Uri call = Uri(
        scheme: 'tel',
        path: '+91${A1.phonenumber}',
      );
      await launchUrl(call);
    }
    // directcall() async {
    //   String number = '+91${h1.phonenumber}';
    //   bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    // }
    makesms() async {
      final Uri sms = Uri(
        scheme: 'sms',
        path: '+91${A1.phonenumber}',
      );
      await launchUrl(sms);
    }
    makeEmail() async {
      final Uri email = Uri(
        scheme: 'mailto',
        path: '${A1.email}',
      );
      await launchUrl(email);
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: Row(
            children: [
              const Text(
                "Contacts",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(width: 100),
              Transform.scale(
                scale: 1.7,
                child: Switch(
                  value: switchval,
                  onChanged: (onChanged) {
                    setState(() {
                      switchval = onChanged;
                    });
                  },
                  activeColor: Colors.black,
                  //inactiveTrackColor: Colors.green,
                  inactiveThumbImage: const AssetImage("assets/images/light.jpg"),
                  activeThumbImage: const AssetImage("assets/images/moon.jpg"),
                ),
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: switchval ? Colors.black54 : Colors.redAccent,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(width: 120),
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage("assets/images/person.png"),
                ),
                IconButton(
                  onPressed: () {
                    Globals.allcontacts.remove(A1);
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'home', (route) => false);
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('editpage', arguments: A1);
                  },
                  icon: const Icon(
                    Icons.content_paste_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                "${A1.firstname} ${A1.lastname}",
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "+91 ${A1.phonenumber} ",
                style: const TextStyle(

                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black87,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    makecall();
// directcall();
                  },
                  mini: true,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.call),
                ),
                FloatingActionButton(
                  onPressed: () {
                    makesms();
                  },
                  mini: true,
                  backgroundColor: Colors.amberAccent,
                  child: const Icon(Icons.message),
                ),
                FloatingActionButton(
                  onPressed: () {
                    makeEmail();
                  },
                  mini: true,
                  backgroundColor: Colors.lightBlue,
                  child: const Icon(Icons.email_outlined),
                ),
                FloatingActionButton(
                  onPressed: () async {
                    // await Share.share(
                    //     "Name:${h1.firstname} ${h1.lastname}\n+91 ${h1.phonenumber}");
                  },
                  mini: true,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: const Icon(Icons.share),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
          ],
        ),
      ),
    //  backgroundColor: switchval ? Colors.greenAccent : Colors.grey,
    );
  }
}
