import 'package:demo/screens/contactForm.dart';
import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';

import '../../utils/widgets.dart';
import 'engineeringOnContent.dart';

class EngineeringDemand extends StatefulWidget {
  const EngineeringDemand({Key? key}) : super(key: key);

  @override
  State<EngineeringDemand> createState() => _EngineeringDemandState();
}

class _EngineeringDemandState extends State<EngineeringDemand> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff071d56),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            showWidget: false,
          )),
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                engineerDemand,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EngineeringOnDemand.engineeringDemand,
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: EngineeringOnDemand.small,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  contactFormContent(width: width, height: height)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
