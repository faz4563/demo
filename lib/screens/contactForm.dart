// ignore_for_file: file_names

import 'package:demo/controllers/emailFunction.dart';
import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => ContactFormState();
}

TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController compNameController = TextEditingController();
TextEditingController itServiceRequiredController = TextEditingController();
TextEditingController requirementsController = TextEditingController();

class ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      color: Colors.blue[800],
      width: width,
      height: height,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width / 2,
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(askAnExpert), fit: BoxFit.cover)),
              ),
              Expanded(
                child: Container(
                  width: width / 6,
                  height: height,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 30),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white38,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: "First Name"),
                                        controller: firstNameController,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: "Last Name"),
                                        controller: lastNameController,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: "Email ID"),
                                        controller: emailController,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: "Company Name"),
                                        controller: compNameController,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      DropdownButtonFormField(
                                        value: "1",
                                        items: const [
                                          DropdownMenuItem(
                                            value: "1",
                                            child: Text(
                                              "IT services required",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 91, 90, 90)),
                                            ),
                                          ),
                                          DropdownMenuItem(
                                            value: "2",
                                            child: Text("data1"),
                                          ),
                                          DropdownMenuItem(
                                            value: "3",
                                            child: Text("data2"),
                                          ),
                                          DropdownMenuItem(
                                            value: "4",
                                            child: Text("data3"),
                                          )
                                        ],
                                        onChanged: (value) {},
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        expands: false,
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            hintText:
                                                "Tell us about your IT requirements"),
                                        controller: requirementsController,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 80,
                          right: 75,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(80, 30)),
                            child: const Text("Submit"),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
