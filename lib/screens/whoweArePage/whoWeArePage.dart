// ignore_for_file: file_names

import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';
import '../../utils/widgets.dart';
import '../landing page/landing.dart';
import 'whoweAreContent.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 700,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                whoWeAre1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WhoWeAreContents.whoWeAre,
                                  SizedBox(
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: WhoWeAreContents.basedIn,
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
                                    height: 30,
                                  ),
                                  WhoWeAreContents.ourCompany,
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    // width: 1100,
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: WhoWeAreContents.inFrench,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ])),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WhoWeAreContents.ourVision,
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  // width: 1100,
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: WhoWeAreContents.toBuild,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                height: 1.6,
                                                wordSpacing: 1.5,
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal)),
                                      ])),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                WhoWeAreContents.ourMission,
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  // width: 1100,
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: WhoWeAreContents.toDevelope,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                height: 1.6,
                                                wordSpacing: 1.5,
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal)),
                                      ])),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 490,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                vision,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 480,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                mission,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          // const Spacer(),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                WhoWeAreContents.ourTeam,
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 1100,
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: WhoWeAreContents.fromExpert,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                height: 1.6,
                                                wordSpacing: 1.5,
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal)),
                                      ])),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WhoWeAreContents.whyUs,
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  // width: 1100,
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: WhoWeAreContents
                                                .marketInteligence,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                height: 1.6,
                                                wordSpacing: 1.5,
                                                color: Colors.black,
                                                fontWeight: FontWeight.normal)),
                                      ])),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 490,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                askAnExpert,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),

                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // SizedBox(
                    //   width: 1100,
                    //   child: RichText(
                    //       textAlign: TextAlign.left,
                    //       text: TextSpan(children: [
                    //         TextSpan(
                    //             text: WhoWeAreContents.marketInteligence,
                    //             style: const TextStyle(
                    //                 fontSize: 16,
                    //                 height: 1.6,
                    //                 wordSpacing: 1.5,
                    //                 color: Colors.white,
                    //                 fontWeight: FontWeight.normal)),
                    //       ])),
                    // ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
