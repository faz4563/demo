// ignore_for_file: implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:demo/screens/contactForm.dart';
import 'package:demo/screens/IndustriesWeServePage/industriesWeServe.dart';
import 'package:demo/screens/whoweArePage/whoWeArePage.dart';
import 'package:demo/utils/images.dart';
import 'package:demo/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

import 'LandingContent.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollController = ScrollController();
  bool ShowWidget = false;

  @override
  void initState() {
    scrollController.addListener(() {
      double showoffset = 300.0;
      if (scrollController.offset > showoffset) {
        setState(() {
          ShowWidget = true;
        });
      } else {
        setState(() {
          ShowWidget = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: ShowWidget == true
                ? AppBarWidget(
                    showWidget: ShowWidget,
                  )
                : SizedBox(
                    width: width,
                    height: 0,
                  )),
        body: SizedBox(
            width: width,
            height: height,
            child: ListView(controller: scrollController, children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(banner), fit: BoxFit.cover)),
                width: width,
                height: height / 1.3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: width * 0.5,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Professional Services",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Home",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return WhoWeare();
                                              },
                                            ));
                                          },
                                          child: Text(
                                            "Who We Are",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      SizedBox(
                                        width: width * 0.095,
                                        child: Row(
                                          children: [
                                            WindowStyleDropdownMenu(
                                                buttonTitle: "What We Do",
                                                dropdownBackgroundColor:
                                                    Colors.cyanAccent,
                                                dropdownItems: [
                                                  ListTile(
                                                    title: Text(
                                                      "IT Assessment & Upgrade Services",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.5),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text(
                                                      "Consolidation & Migration Services",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.5),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text(
                                                      "IT Transformation",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.5),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: Text(
                                                      "Engineering on Demand",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing: 0.5),
                                                    ),
                                                  ),
                                                ]),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      IndustriesWeServe(),
                                                ));
                                          },
                                          child: Text(
                                            "Industries We Serve",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Blog",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                )),
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: width * 0.5,
                        height: height * 0.12,
                        child: TextListPage(
                          texts: LandingPageContents.topicsList,
                          timeInterval: 5,
                          textStyle: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: null,
                        width: 800,
                        child: LandingPageContents.subTopic),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactForm(),
                            ));
                      },
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.33,
                        child: LandingPageContents.getOnPath,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: LandingPageContents.intheAge,
                      ),
                      const SizedBox(
                        height: 20,
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
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 212, 210, 210),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SizedBox(
                        width: 400,
                        // height: 300,
                        child: Image.asset(
                          pic1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.33,
                          child: LandingPageContents.consolidation,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: width * 0.5,
                          child: LandingPageContents.reduce,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.33,
                        child: LandingPageContents.itTransformation,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width * 0.5,
                        child: LandingPageContents.driveBusiness,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: SizedBox(
                      width: 400,
                      // height: 300,
                      child: Image.asset(
                        pic1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 212, 210, 210),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SizedBox(
                        width: 400,
                        // height: 300,
                        child: Image.asset(
                          pic1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * 0.33,
                          child: LandingPageContents.engineeringOnDemand,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: width * 0.5,
                          child: LandingPageContents.ensure,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                // color: const Color.fromARGB(255, 212, 210, 210),
                width: width,
                height: height * 0.45,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LandingPageContents.partner,
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.5,
                              child: LandingPageContents.ourteamofTechnicians,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 400,
                          // height: 300,
                          child: Image.asset(
                            pic2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 212, 210, 210),
                width: width,
                height: height * 0.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 400,
                          // height: 300,
                          child: Image.asset(
                            pic3,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.33,
                              child: LandingPageContents.gainTrue,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.5,
                              child: LandingPageContents.isYourTech,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
               // color: const Color.fromARGB(255, 212, 210, 210),
                width: width,
                height: height * 0.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.33,
                              child: LandingPageContents.weHaveBeen,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.5,
                              child: LandingPageContents.leveragingYears,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 400,
                          // height: 300,
                          child: Image.asset(
                            pic3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 212, 210, 210),
                width: width,
                height: height * 0.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 400,
                          // height: 300,
                          child: Image.asset(
                            pic3,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.33,
                              child: LandingPageContents.seeWhy,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.5,
                              child: LandingPageContents.iHaveOne,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ])),
        floatingActionButton: AnimatedOpacity(
          duration: Duration(milliseconds: 1000), //show/hide animation
          opacity: ShowWidget ? 1.0 : 0.0,
          child: FloatingActionButton(
              onPressed: () {
                scrollController.animateTo(
                    //go to top of scroll
                    0, //scroll offset to go
                    duration: Duration(milliseconds: 500), //duration of scroll
                    curve: Curves.fastOutSlowIn //scroll type
                    );
              },
              child: Icon(Icons.arrow_upward)),
        ));
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
      height: 100,
      color: showWidget == true ? Colors.blue[900] : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              width: width * 0.5,
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Row(children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Professional Services",
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
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
                    SizedBox(
                      width: width * 0.095,
                      child: Row(
                        children: [
                          WindowStyleDropdownMenu(
                              buttonTitle: "What We Do",
                              dropdownBackgroundColor: Colors.cyanAccent,
                              dropdownItems: [
                                ListTile(
                                  title: Text(
                                    "IT Assessment & Upgrade Services",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Consolidation & Migration Services",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "IT Transformation",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Engineering on Demand",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ]),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return IndustriesWeServe();
                            },
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
                        child: Text(
                          "Blog",
                          style: TextStyle(color: Colors.white),
                        )),
                  ])))
        ],
      ),
    );
  }
}
