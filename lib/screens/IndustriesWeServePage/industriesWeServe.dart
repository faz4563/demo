// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import '../../utils/images.dart';
import '../../utils/widgets.dart';
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
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          width: 500,
                          height: 280,
                          child: IntrinsicHeight(
                            child: Image.asset(
                              industry,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.industriesWeServe,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: IndustriesContent
                                                  .weAreNotJust,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.oilIndustries,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: IndustriesContent
                                                  .oilGasIndustry,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                oilService,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          width: 500,
                          height: 280,
                          child: IntrinsicHeight(
                            child: Image.asset(
                              medical,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.healthCare,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  IndustriesContent.itSolutions,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.financial,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: IndustriesContent
                                                  .weOfferFinancial,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                financialService,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          width: 500,
                          height: 280,
                          child: IntrinsicHeight(
                            child: Image.asset(
                              educationService,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.education,
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
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IndustriesContent.transportation,
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: IndustriesContent
                                                  .ourteamSpecializes,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                financialService,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





// Column(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                     
                        
                      
                    
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //       Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Padding(
                      //             padding: const EdgeInsets.only(left: 40),
                      //             child: IndustriesContent.education),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                     
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //       Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Padding(
                      //             padding: const EdgeInsets.only(left: 40),
                      //             child: IndustriesContent.retail),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       SizedBox(
                      //         width: 1100,
                      //         child: RichText(
                      //             textAlign: TextAlign.left,
                      //             text: TextSpan(children: [
                      //               TextSpan(
                      //                   text: IndustriesContent.companies,
                      //                   style: TextStyle(
                      //                       fontSize: 16,
                      //                       height: 1.6,
                      //                       wordSpacing: 1.5,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.normal)),
                      //             ])),
                      //       ),
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //       Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Padding(
                      //             padding: const EdgeInsets.only(left: 40),
                      //             child: IndustriesContent.transportation),
                      //       ),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       SizedBox(
                      //         width: 1100,
                      //         child: RichText(
                      //             textAlign: TextAlign.left,
                      //             text: TextSpan(children: [
                      //               TextSpan(
                      //                   text: IndustriesContent.ourteamSpecializes,
                      //                   style: TextStyle(
                      //                       fontSize: 16,
                      //                       height: 1.6,
                      //                       wordSpacing: 1.5,
                      //                       color: Colors.white,
                      //                       fontWeight: FontWeight.normal)),
                      //             ])),
                      //       ),
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //     ]),