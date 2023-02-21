// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/screens/landing%20page/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../content.dart';
import 'IndustriesContent.dart';

class IndustriesWeServe extends StatelessWidget {
  const IndustriesWeServe({super.key});

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
                        child: IndustriesContent.industriesWeServe),
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
                              text: IndustriesContent.weAreNotJust,
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
                        child: IndustriesContent.oilIndustries),
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
                              text: IndustriesContent.oilGasIndustry,
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
                        child: IndustriesContent.healthCare),
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
                              text: IndustriesContent.itSolutions,
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
                        child: IndustriesContent.financial),
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
                              text: IndustriesContent.weOfferFinancial,
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
                        child: IndustriesContent.education),
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
                              text: IndustriesContent.weDevelop,
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
                        child: IndustriesContent.retail),
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
                              text: IndustriesContent.companies,
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
                        child: IndustriesContent.transportation),
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
                              text: IndustriesContent.ourteamSpecializes,
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
                ]),
          ),
        ),
      ),
    );
  }
}
