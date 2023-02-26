// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

import '../screens/IndustriesWeServePage/industriesWeServe.dart';
import '../screens/landing page/landing.dart';
import '../screens/whatwedo/consolidationPage.dart';
import '../screens/whatwedo/engineeringOnPage.dart';
import '../screens/whatwedo/itAssesmentPage.dart';
import '../screens/whatwedo/itTransformationPage.dart';
import '../screens/whoweArePage/whoWeArePage.dart';

class TextListPage extends StatefulWidget {
  const TextListPage(
      {Key? key,
      required this.texts,
      required this.timeInterval,
      this.textStyle})
      : super(key: key);
  final List texts;
  final int timeInterval;
  final textStyle;
  @override
  _TextListPageState createState() => _TextListPageState();
}

class _TextListPageState extends State<TextListPage> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: widget.texts
            .map((e) => Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      e,
                      style: widget.textStyle,
                    ),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
            viewportFraction: 9 / 5,
            animateToClosest: true,
            autoPlay: true,
            autoPlayCurve: Curves.easeIn));
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.showWidget});
  final bool showWidget;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      color: showWidget == true ? Colors.blue[900] : Colors.transparent,
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return LandingPage();
                      },
                    ));
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: width * 0.01,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return WhoWeare();
                      },
                    ));
                  },
                  child: Text(
                    "Who We Are",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: width * 0.01,
              ),
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: WindowStyleDropdownMenu(
                        buttonTitle: "What We Do",
                        // dropdownWidth: 250,
                        dropdownBackgroundColor: Colors.white,
                        dropdownItems: [
                          ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return IT_Assesment();
                                },
                              ));
                            },
                            title: Text(
                              "IT Assessment & Upgrade Services",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return Consolidation();
                                },
                              ));
                            },
                            title: Text(
                              "Consolidation & Migration Services",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return IT_Transformation();
                                },
                              ));
                            },
                            title: Text(
                              "IT Transformation",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return EngineeringDemand();
                                },
                              ));
                            },
                            title: Text(
                              "Engineering on Demand",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                            ),
                          )
                        ]),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: width * 0.01,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndustriesWeServe(),
                        ));
                  },
                  child: Text(
                    "Industries We Serve",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: width * 0.01,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Blog",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
