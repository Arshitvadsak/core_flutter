import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'globals.dart';

class Purchase extends StatefulWidget {
  const Purchase({Key? key}) : super(key: key);

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
 // final ImagePicker _picker = ImagePicker();
  GlobalKey<FormState> contactkey = GlobalKey<FormState>();
  TextEditingController itemname = TextEditingController();
  TextEditingController itemcost = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController email1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          )
        ],
        title: const Text(
          "Purchase",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 2.1,
                    color: Colors.black12,
                    child: const Text(
                      "Bill No.\t1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 2.2,
                    color: Colors.black12,
                    child: const Text(
                      "Date\n26/12/2022",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
                        "Item Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: itemname,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Please Enter Your Item Name...';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            Globals.firstname = val;
                          });
                        },
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        minLines: 1,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.7),
                          ),
                          filled: true,
                          fillColor: Colors.black12,
                          hintText: "First Name",
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black26),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Item Cost",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: itemcost,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Please Enter Your item...';
                          }
                          return null;
                        },
                        onSaved: (val1) {
                          setState(() {
                            Globals.lastcost = val1;
                          });
                        },
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        minLines: 1,
                        maxLines: 2,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.7),
                          ),
                          filled: true,
                          fillColor: Colors.black12,
                          hintText: "item cost",
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black26),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          )),
                        ),
                      ),
                     const SizedBox(height: 10,),
                      const Text(
                        "Quantity",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                     const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: quantity,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Please Enter Your Quantity...';
                          }
                          return null;
                        },
                        onSaved: (val1) {
                          setState(() {
                            Globals.price = val1;
                          });
                        },
                        style:
                        const TextStyle(fontSize: 20, color: Colors.black),
                        minLines: 1,
                        maxLines: 2,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1.7),
                          ),
                          filled: true,
                          fillColor: Colors.black12,
                          hintText: "Quantity",
                          hintStyle:
                          TextStyle(fontSize: 20, color: Colors.black26),
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
             const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (contactkey.currentState!.validate()) {
                    contactkey.currentState!.save();
                    // Contact c1 = Contact(
                    //   name: firstname,
                    //   phonenumber: phonenumber,
                    //   email: email,
                    //   image: Globals.image,
                    // );
                    // setState(() {
                    //   Globals.allcontacts.add(c1);
                    // });
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'LivePage', (route) => false);
                  }
                },
                splashColor: Colors.white,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black12,
                  ),
                  child: const Icon(Icons.add_circle_outline_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}
