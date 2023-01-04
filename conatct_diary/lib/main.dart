import 'package:conatct_diary/add.dart';
import 'package:conatct_diary/contacts_edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contacts.dart';
import 'globals.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatefulWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'home': (context) => const HomePage(),
        // 'homepage': (context) => const ContactApp(),
        // 'addcontact': (context) => const Edit(),
        'detail_page': (context) => const call(),
        'editpage': (context) => const Contact_edit(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool val = false;
  bool switchval = false;

  makecall({required phonenumber}) async {
    final Uri call = Uri(
      scheme: 'tel',
      path: '+91 $phonenumber',
    );
    await launchUrl(call);
  }

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(width: 160),
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
                  inactiveThumbImage:
                      const AssetImage("assets/images/light.jpg"),
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
      body: (Globals.allcontacts.isEmpty)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/open-cardboard-box.png"),
                  ),
                  Text(
                    "You have no contacts yet",
                    style: TextStyle(fontSize: 22, color: Colors.grey.shade600),
                  ),
                ],
              ),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: Globals.allcontacts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  onTap: () {
                    makecall(phonenumber: Globals.allcontacts[i].phonenumber);
                  },
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/person.png'),
                  ),
                  title: Text(
                    "${Globals.allcontacts[i].firstname} ${Globals.allcontacts[i].lastname}",
                    style: TextStyle(
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "+91 ${Globals.allcontacts[i].phonenumber} ",
                    style: TextStyle(
                        color: Colors.black),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('detail_page',
                          arguments: Globals.allcontacts[i]);
                    },
                    icon: const Icon(
                      CupertinoIcons.info,
                      size: 32,
                    ),
                    color: Colors.black,
                  ),
                );
              },
            ),
      floatingActionButton: SizedBox(
        height: 55,
        width: 55,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: switchval ? Colors.black54 : Colors.redAccent,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Edit()));
              },
              child: const Icon(
                Icons.add,
                size: 27,
              )),
        ),
      ),
      //  backgroundColor: switchval ? Colors.greenAccent : Colors.grey,
    );
  }
}
