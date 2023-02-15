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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 2,
                    height: height * 0.6,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            controller: firstNameController,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.2,
                          child: TextFormField(
                            controller: lastNameController,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
