// ignore_for_file: file_names

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
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: width / 2,
            height: height,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 2,
                    height: height * 0.1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "First Name"),
                            controller: firstNameController,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Last Name"),
                            controller: lastNameController,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 2,
                    height: height * 0.1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: "Email ID"),
                            controller: emailController,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Company Name"),
                            controller: compNameController,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 2,
                    height: height * 0.1,
                    child: DropdownButtonFormField(
                      value: "1",
                      items: const [
                        DropdownMenuItem(
                          value: "1",
                          child: Text(
                            "IT services required",
                            style: TextStyle(color: Colors.grey),
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
                  ),
                  SizedBox(
                    width: width * 0.4,
                    // height: height * 0.5,
                    child: TextFormField(
                      expands: false,
                      maxLines: 10,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Tell us about your IT requirements"),
                      controller: requirementsController,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
