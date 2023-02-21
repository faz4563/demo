import 'package:flutter/material.dart';

import 'content.dart';
import 'landing.dart';

class WhoWeare extends StatefulWidget {
  const WhoWeare({Key? key}) : super(key: key);

  @override
  State<WhoWeare> createState() => _WhoWeareState();
}

class _WhoWeareState extends State<WhoWeare> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff071d56),
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
                        child: RequiredTexts.whoWeAre),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.basedIn,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RequiredTexts.ourCompany),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.inFrench,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RequiredTexts.ourVision),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.toBuild,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RequiredTexts.ourMission),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.toDevelope,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RequiredTexts.ourTeam),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.fromExpert,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: RequiredTexts.whyUs),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: RequiredTexts.marketInteligence,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
