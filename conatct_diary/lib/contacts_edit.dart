import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'globals.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contact_edit(),
    ),
  );
}

class Contact_edit extends StatefulWidget {
  const Contact_edit({Key? key}) : super(key: key);

  @override
  State<Contact_edit> createState() => _Contact_editState();
}

class _Contact_editState extends State<Contact_edit> {
  bool val = false;
  bool switchval = false;
  List<Contact> contacts = List.empty(growable: true);

  GlobalKey<FormState> contackKey = GlobalKey<FormState>();
  final TextEditingController _fncontrollar = TextEditingController();
  final TextEditingController _lncontrollar = TextEditingController();
  final TextEditingController _pncontrollar = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? email;
  XFile? image;

  @override
  Widget build(BuildContext context) {
    dynamic A1 = ModalRoute.of(context)!.settings.arguments;
    _fncontrollar.text = A1.firstname;
    _lncontrollar.text = A1.lastname;
    _pncontrollar.text = A1.phonenumber;
    _emailcontroller.text = A1.email;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color:  Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
              _fncontrollar.clear();
              _lncontrollar.clear();
              _pncontrollar.clear();
              _emailcontroller.clear();
              setState(() {
                firstname = "";
                lastname = "";
                phonenumber = "";
                email = "";
              });
            },
          ),
          title: Row(
            children: [
              const Text(
                "Edit contact",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(width: 70),
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
      body: Form(
        key: contackKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "First Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                //    color: Globals.themeMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _fncontrollar,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please Enter Your First Name...';
                    }
                    return null;
                  },
                  onSaved: (val1) {
                    setState(() {
                      firstname = val1;
                    });
                  },
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black),
                  minLines: 1,
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.7),
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "First Name",
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black26),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
               //       color: Globals.themeMode ? Colors.white : Colors.black,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Last Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                //    color: Globals.themeMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _lncontrollar,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please Enter Your First Name...';
                    }
                    return null;
                  },
                  onSaved: (val1) {
                    setState(() {
                      lastname = val1;
                    });
                  },
                  style: const TextStyle(
                      fontSize: 20,
                  ),
                  minLines: 1,
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.7),
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                        fontSize: 20,
                       color: Colors.black26
                         ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black ,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _pncontrollar,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please Enter Your First Name...';
                    }
                    return null;
                  },
                  onSaved: (val1) {
                    setState(() {
                      phonenumber = val1;
                    });
                  },
                  style: const TextStyle(
                      fontSize: 20,
                     // color: Globals.themeMode ? Colors.white : Colors.black
                  ),
                  minLines: 1,
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.7),
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "+91 0000000000",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                    //  color: Globals.themeMode ? Colors.white : Colors.black,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                //    color: Globals.themeMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _emailcontroller,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please Enter Your First Name...';
                    }
                    return null;
                  },
                  onSaved: (val1) {
                    setState(() {
                      email = val1;
                    });
                  },
                  style: const TextStyle(
                      fontSize: 20,
              //        color: Globals.themeMode ? Colors.white : Colors.black
                    ),
                  minLines: 1,
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.7),
                    ),
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "abc@gmail.com",
                    hintStyle: TextStyle(
                        fontSize: 20,
                   //     color: Globals.themeMode ? Colors.white54 : Colors.black26
                      ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                //      color: Globals.themeMode ? Colors.white : Colors.black,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: switchval ? Colors.black54 : Colors.redAccent,
        onPressed: () {
          if (contackKey.currentState!.validate()) {
            contackKey.currentState!.save();
            Contact c1 = Contact(
              firstname: firstname,
              lastname: lastname,
              phonenumber: phonenumber,
              email: email,
              image: Globals.image,
            );
            int i = Globals.allcontacts.indexOf(A1);
            Globals.allcontacts[i] = (c1);
            Navigator.of(context)
                .pushNamedAndRemoveUntil('home', (route) => false);
          }
        },
        child: const Icon(
          Icons.check,
          size: 30,
        ),
      ),
     // backgroundColor: switchval ? Colors.greenAccent : Colors.grey,
    );
  }
}
