// ignore_for_file: implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/screens/contactForm.dart';
import 'package:demo/screens/IndustriesWeServePage/industriesWeServe.dart';
import 'package:demo/screens/whatwedo/consolidationPage.dart';
import 'package:demo/screens/whatwedo/engineeringOnPage.dart';
import 'package:demo/screens/whatwedo/itAssesmentPage.dart';
import 'package:demo/screens/whatwedo/itTransformationPage.dart';
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
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(banner2), fit: BoxFit.cover)),
                    width: width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    width: width * 0.4,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                    context, MaterialPageRoute(
                                                  builder: (context) {
                                                    return LandingPage();
                                                  },
                                                ));
                                              },
                                              child: Text(
                                                "Home",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pushReplacement(
                                                    context, MaterialPageRoute(
                                                  builder: (context) {
                                                    return WhoWeare();
                                                  },
                                                ));
                                              },
                                              child: Text(
                                                "Who We Are",
                                                style: TextStyle(
                                                    color: Colors.white),
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
                                                    dropdownBackgroundColor:
                                                        Colors.white,
                                                    dropdownItems: [
                                                      ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                        ),
                                                      ),
                                                      ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                        ),
                                                      ),
                                                      ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
                                                        ),
                                                      ),
                                                      ListTile(
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.5),
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
                                                      builder: (context) =>
                                                          IndustriesWeServe(),
                                                    ));
                                              },
                                              child: Text(
                                                "Industries We Serve",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Blog",
                                                style: TextStyle(
                                                    color: Colors.white),
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
                        FittedBox(
                          fit: BoxFit.contain,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ContactForm(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(width * 0.2, height * 0.09)),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: const Text(
                                "HEAR FROM OUR EXPERTS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Column(
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
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      width: 400,
                      height: 300,
                      child: IntrinsicHeight(
                        child: Image.asset(
                          itAssessment1,
                          fit: BoxFit.cover,
                        ),
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
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          width: 400,
                          height: 300,
                          child: IntrinsicHeight(
                            child: Image.asset(
                              documentation,
                              fit: BoxFit.cover,
                            ),
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
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        width: 400,
                        height: 300,
                        child: IntrinsicHeight(
                          child: Image.asset(
                            digitalTransformation,
                            fit: BoxFit.cover,
                          ),
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
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 400,
                            height: 300,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                engineerDemand,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  // color: const Color.fromARGB(255, 212, 210, 210),
                  width: width,

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
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 400,
                            height: 300,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                partnerYouCanTrust,
                                fit: BoxFit.cover,
                              ),
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              width: 400,
                              height: 300,
                              child: IntrinsicHeight(
                                child: Image.asset(
                                  trueUnderstanding,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
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
                SizedBox(
                  // color: const Color.fromARGB(255, 212, 210, 210),
                  width: width,

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
                              SizedBox(
                                height: 20,
                              ),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SizedBox(
                              width: 400,
                              height: 300,
                              child: IntrinsicHeight(
                                child: Image.asset(
                                  strategiCustomization,
                                  fit: BoxFit.cover,
                                ),
                              ),
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
                  height: height / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: SizedBox(
                          width: 400,
                          height: 300,
                          child: IntrinsicHeight(
                            child: Image.asset(
                              smb,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: LandingPageContents.seeWhy,
                            ),
                            SizedBox(
                              width: width * 0.5,
                              height: height * 0.3,
                              child: CarouselSlider(
                                  items: [
                                    SizedBox(
                                      width: width,
                                      height: height,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 80),
                                        child: ListView(children: [
                                          LandingPageContents.comp1
                                        ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width,
                                      height: height,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 80),
                                        child: ListView(children: [
                                          LandingPageContents.comp2
                                        ]),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width,
                                      height: height,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 80),
                                        child: ListView(children: [
                                          LandingPageContents.comp3
                                        ]),
                                      ),
                                    ),
                                  ],
                                  options: CarouselOptions(
                                      viewportFraction: 1.2,
                                      animateToClosest: true,
                                      autoPlay: true,
                                      autoPlayCurve: Curves.easeIn)),
                            ),
                          ],
                        ),
                      )

                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [

                      //   ],
                      // ),
                    ],
                  ),
                ),
              ]),
            )),
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
