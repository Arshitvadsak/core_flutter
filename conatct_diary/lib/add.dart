import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'globals.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  bool switchval = false;

  final ImagePicker _picker = ImagePicker();
  GlobalKey<FormState> contactkey = GlobalKey<FormState>();
  TextEditingController firstname1 = TextEditingController();
  TextEditingController lastname1 = TextEditingController();
  TextEditingController phonenumber1 = TextEditingController();
  TextEditingController email1 = TextEditingController();
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? email;
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: Row(
            children: [
              const Text(
                "Add",
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                     // backgroundImage:
                     // (image != null) ? FileImage(image!) : null,
                      backgroundColor: switchval ? Colors.black54 : Colors.redAccent,
                      radius: 50,
                      child: Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Text(
                          (image != null) ? "" : "ADD",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.55, 0.7),
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor:  Colors.white,
                              title: const Text(
                                'Choose Gallery or Camera?',
                                style: TextStyle(
                                    color: Colors.black),
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () async {
                                    XFile? pickedPhoto = await _picker
                                        .pickImage(source: ImageSource.gallery);
                                    setState(() {
                                      image = XFile(pickedPhoto!.path);
                                    });
// ignore: use_build_context_synchronously
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("ALBUMS"),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    XFile? pickedFile = await _picker.pickImage(
                                        source: ImageSource.camera);
                                    setState(() {
                                      image = XFile(pickedFile!.path);
                                    });
// ignore: use_build_context_synchronously
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("CAMERA"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Icon(Icons.add, color: Colors.grey),
                      backgroundColor: switchval ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: contactkey,
              child: Container(
                padding: const EdgeInsets.all(20),
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
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: firstname1,
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
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:  Colors.black,
                              width: 1.7),
                        ),
                        filled: true,
                        fillColor: Colors.black12,
                        hintText: "First Name",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black26),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Last Name",
                      style: TextStyle(
                        fontSize: 20,
                        color:  Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: lastname1,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please Enter Your Last Name...';
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
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black26),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
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
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: phonenumber1,
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please Enter Your Phone Number...';
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
                          color: Colors.black),
                      minLines: 1,
                      maxLines: 2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.7),
                        ),
                        filled: true,
                        fillColor: Colors.black12,
                        hintText: "+91 0000000000",
                        hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black26),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
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
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: email1,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please Enter Your Email...';
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
                          color: Colors.black),
                      minLines: 1,
                      maxLines: 2,
                      keyboardType: TextInputType.emailAddress,
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
                            color: Colors.black26),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: switchval ? Colors.black54 : Colors.redAccent,
          onPressed: () {
            if (contactkey.currentState!.validate()) {
              contactkey.currentState!.save();
              Contact c1 = Contact(
                firstname: firstname,
                lastname: lastname,
                phonenumber: phonenumber,
                email: email,
                image: Globals.image,
              );
              setState(() {
                Globals.allcontacts.add(c1);
              });
              Navigator.pushNamedAndRemoveUntil(
                  context, 'home', (route) => false);
            }
          },
        child: const Icon(
          Icons.check,
          size: 30,
        ),
      ),
    //  backgroundColor: switchval ? Colors.greenAccent : Colors.grey,
    );
  }
}
