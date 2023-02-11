// ignore_for_file: implementation_imports

import 'dart:html';

import 'package:demo/screens/content.dart';
import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollControll = ScrollController();
  bool ShowWidget = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: null,
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollControll.position.userScrollDirection ==
              ScrollDirection.reverse) {
            print('User is going down');
            setState(() {
              ShowWidget = false;
            });
          } else {
            if (scrollControll.position.userScrollDirection ==
                ScrollDirection.forward) {
              print('User is going up');
              setState(() {
                ShowWidget = true;
              });
            }
          }
          return true;
        },
        child: SizedBox(
          width: width,
          height: height,
          child: NestedScrollView(
            controller: scrollControll,
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
              return <Widget>[];
            },
            body: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(banner), fit: BoxFit.cover)),
                  width: width,
                  height: height / 1.4,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShowWidget == false
                                ? Container()
                                : Image.asset(
                                    logo,
                                    width: width * 0.1,
                                    fit: BoxFit.contain,
                                  ),
                            SizedBox(
                              width: width * 0.39,
                              height: height * 0.2,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Login",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Create an account",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: DropdownButton(
                                            items: const [],
                                            onChanged: (value) {},
                                            icon: const Icon(
                                              Icons.arrow_drop_down_outlined,
                                              size: 18,
                                              color: Colors.black,
                                            ),
                                            hint: const Text(
                                              "Tools",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1.5,
                                                  fontSize: 11.5,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            underline: Container(),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: DropdownButton(
                                            items: const [],
                                            onChanged: (value) {},
                                            icon: const Icon(
                                              Icons.arrow_drop_down_outlined,
                                              size: 18,
                                              color: Colors.black,
                                            ),
                                            hint: const Text(
                                              "Support",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1.5,
                                                  fontSize: 11.5,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            underline: Container(),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: DropdownButton(
                                            items: const [],
                                            onChanged: (value) {},
                                            icon: const Icon(
                                              Icons.arrow_drop_down_outlined,
                                              size: 18,
                                              color: Colors.black,
                                            ),
                                            // ignore: prefer_const_constructors
                                            hint: Icon(
                                              Icons.location_searching,
                                              size: 18,
                                              color: Colors.white,
                                            ),
                                            underline: Container(),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.shopping_cart,
                                                  size: 18,
                                                  color: Colors.white,
                                                )))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: SizedBox(
                                        width: width * 0.15,
                                        height: height * 0.05,
                                        child: TextFormField(
                                          style: const TextStyle(fontSize: 12),
                                          decoration: const InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.zero,
                                                  borderSide:
                                                      BorderSide(width: 1)),
                                              border: OutlineInputBorder(),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                horizontal: 10,
                                              ),
                                              fillColor: Colors.white,
                                              filled: true,
                                              hintText: "How Can I Help You ?",
                                              hintStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                              suffixIcon: Icon(
                                                Icons.search,
                                                color: Colors.black,
                                                size: 14,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        width: width,
                        height: height / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("IT consulting services",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                    fontFamily: ".SF UI Text",
                                    fontWeight: FontWeight.w200)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                                " Modernize your organization and increase efficiency, flexibility and security\n with our comprehensive cloud and data center services.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    letterSpacing: 1.9,
                                    height: 1.5,
                                    wordSpacing: 2,
                                    fontFamily: ".SF UI Text",
                                    fontWeight: FontWeight.normal)),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(width * 0.2, height * 0.09)),
                              child: const Text(
                                "HEAR FROM OUR TEAM",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * 0.33,
                          child: RequiredTexts.getOnPath,
                        ),
                        SizedBox(
                          width: width * 0.33,
                          child: RequiredTexts.intheAge,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: width * 0.33,
                          child: RequiredTexts.weHelpYou,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 400,
                      // height: 300,
                      child: Image.asset(
                        pic1,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: width,
                  height: height * 0.5,
                  color: const Color.fromARGB(255, 212, 210, 210),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RequiredTexts.optimize,
                      SizedBox(width: width / 2, child: RequiredTexts.ourCloud),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
