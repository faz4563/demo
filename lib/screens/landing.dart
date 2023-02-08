// ignore_for_file: implementation_imports

import 'dart:html';

import 'package:demo/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // _showPopupMenu() async {
  //   // double left = offset.dx;
  //   // double top = offset.dy;
  //   await showMenu(
  //     context: context,
  //     position: RelativeRect.fill,
  //     // position: RelativeRect.fromLTRB(left, top, 0, 0),
  //     items: <PopupMenuEntry<int>>[
  //       PopupMenuItem(child: Text('0'), value: 0),
  //       PopupMenuItem(child: Text('1'), value: 1),
  //     ],
  //     elevation: 8.0,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          width: width,
          height: height,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(180)),
                    image: DecorationImage(
                        image: AssetImage(banner), fit: BoxFit.cover)),
                width: width,
                height: height * 0.6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                              onPressed: () {
                                print("object");
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: (const Size(
                                  137,
                                  29,
                                )),
                                side: const BorderSide(width: 0.5),
                                backgroundColor: const Color(0xfff2e000),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: const Text(
                                "GET SUPPORT",
                                style: TextStyle(
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              logo,
                              fit: BoxFit.contain,
                              width: 200,
                              height: 80,
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      WindowStyleDropdownMenu(
                                          buttonTitle: "IT SOLUTIONS",
                                          dropdownBackgroundColor: Colors.white,
                                          dropdownItems: const [
                                            ListTile(
                                              title: Text("CYBER SECURITY",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text("DATA CENTER",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text("COLLABORATION",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text("ENTERPRISE NETWORKS",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text("CLOUD MIGRATION",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text(
                                                  "BACKUP AND DISASTER RECOVERY",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                          ]),
                                      const Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      WindowStyleDropdownMenu(
                                          buttonTitle: "IT SERVICES",
                                          dropdownBackgroundColor: Colors.white,
                                          dropdownItems: const [
                                            ListTile(
                                              title: Text(
                                                "MANAGED IT SERVICES",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                "PROFESSIONAL IT SERVICES",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ]),
                                      const Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      WindowStyleDropdownMenu(
                                          buttonTitleStyle:
                                              // ignore: prefer_const_constructors
                                              TextStyle(color: Colors.white),
                                          buttonTitle: "INDUSTRIES",
                                          dropdownBackgroundColor: Colors.white,
                                          dropdownItems: const [
                                            ListTile(
                                              title: Text(
                                                "MANUFACTURING",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text("HEALTH CARE",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text("EDUCATION",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                            ListTile(
                                              title: Text(
                                                  "PROFESSIONAL SERVICES",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.blue)),
                                            ),
                                          ]),
                                      const Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      WindowStyleDropdownMenu(
                                          buttonTitle: "LEARNING CENTER",
                                          dropdownBackgroundColor: Colors.white,
                                          dropdownItems: const [
                                            ListTile(
                                              title: Text(
                                                "THE ULTIMATE GUIDE TO MANAGED IT SERVICES",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ]),
                                      const Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      WindowStyleDropdownMenu(
                                          buttonTitle: "COMPANY",
                                          dropdownBackgroundColor: Colors.white,
                                          dropdownItems: const [
                                            ListTile(
                                              title: Text(
                                                "MEET OUR LEADERS",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                "CAREERS",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                "AWARDS",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ]),
                                      const Icon(Icons.keyboard_arrow_down)
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text("CONTACT",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white)))
                                  // Row(
                                  //   children: [
                                  //     WindowStyleDropdownMenu(
                                  //         buttonTitle: "IT SOLUTIONS",
                                  //         dropdownBackgroundColor: Colors.white,
                                  //         dropdownItems: const [
                                  //           ListTile(
                                  //             title: Text(
                                  //               "CYBER SECURITY",
                                  //               style: TextStyle(
                                  //                   color: Colors.blue),
                                  //             ),
                                  //           ),
                                  //           ListTile(
                                  //             title: Text("DATA CENTER"),
                                  //           ),
                                  //           ListTile(
                                  //             title: Text("COLLABORATION"),
                                  //           ),
                                  //           ListTile(
                                  //             title:
                                  //                 Text("ENTERPRISE NETWORKS"),
                                  //           ),
                                  //           ListTile(
                                  //             title: Text("CLOUD MIGRATION"),
                                  //           ),
                                  //           ListTile(
                                  //             title: Text(
                                  //                 "BACKUP AND DISASTER RECOVERY"),
                                  //           ),
                                  //         ]),
                                  //     const Icon(Icons.keyboard_arrow_down)
                                  //   ],
                                  // ),
                                ],
                              ),
                            )
                            // InkWell(
                            //   onHover: (value) {
                            //     showDialog(
                            //         context: context,
                            //         builder: (context) => AlertDialog(
                            //               content: Container(
                            //                 child: Column(
                            //                   children: const [
                            //                     Text("CYBER SECURITY"),
                            //                     Text("DATA CENTER"),
                            //                     Text("COLLABORATION"),
                            //                     Text("ENTERPRISE NETWORKS"),
                            //                     Text("CLOUD MIGRATION"),
                            //                     Text(
                            //                         "BACKUP AND DISASTER RECOVERY"),
                            //                   ],
                            //                 ),
                            //               ),
                            //             ));
                            //   },
                            //   child: Text("IT SOLUTIONS"),
                            // )
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
