import 'package:flutter/material.dart';

import '../../utils/widgets.dart';
import '../landing page/landing.dart';
import 'engineeringOnContent.dart';
import 'itTransformationContent.dart';

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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: EngineeringOnDemand.engineeringDemand),
                  ),
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
