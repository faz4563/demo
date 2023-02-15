// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => ContactFormState();
}

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
            child: Column(
              children: [
                SizedBox(
                  width: width * 0.2,
                  child: Row(
                    children: [TextFormField(), TextFormField()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
