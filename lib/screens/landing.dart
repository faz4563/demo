// ignore_for_file: implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo/screens/contactForm.dart';
import 'package:demo/screens/content.dart';
import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

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
                : Container(
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
                height: height / 1.4,
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
                                      Row(
                                        children: [
                                          WindowStyleDropdownMenu(
                                              dropdownBackgroundColor:
                                                  Colors.white,
                                              buttonTitle:
                                                  "IT Consulting Services",
                                              dropdownItems: [
                                                ListTile(
                                                  title: Text(
                                                    "All IT Consulting Services",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Consolidation Services",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "IT Strategy & Assessment",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "IT Transformation",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Migration Services",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          WindowStyleDropdownMenu(
                                              dropdownBackgroundColor:
                                                  Colors.white,
                                              buttonTitle:
                                                  "Cloud & Data Center Platforms",
                                              dropdownItems: [
                                                ListTile(
                                                  title: Text(
                                                    "All Cloud & Data Center Platforms",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Cloud & Hybrid Cloud Platforms",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Converged & flash infrastructure",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Hyperconverged infrastructure",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Traditional data center platforms",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Support",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: SizedBox(
                                width: width * 0.14,
                                height: height * 0.06,
                                child: TextFormField(
                                  // maxLines: 0,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(fontSize: 12),
                                  decoration: const InputDecoration(
                                      // border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero,
                                          borderSide: BorderSide(
                                              width: 1.5, color: Colors.red)),
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "How Can I Help You ?",
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                      suffixIcon: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                        size: 16,
                                      )),
                                ),
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: width * 0.4,
                      height: height * 0.15,
                      child: Center(
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              'IT CONSULTING SERVICES',
                              textStyle: const TextStyle(
                                fontSize: 36.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                            WavyAnimatedText(
                              'IT CONSULTING SERVICES',
                              textStyle: const TextStyle(
                                fontSize: 36.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                            WavyAnimatedText(
                              'IT CONSULTING SERVICES',
                              textStyle: const TextStyle(
                                fontSize: 36.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                            WavyAnimatedText(
                              'IT CONSULTING SERVICES',
                              textStyle: const TextStyle(
                                fontSize: 36.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          totalRepeatCount: 0,
                          pause: const Duration(milliseconds: 2000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          isRepeatingAnimation: true,
                          repeatForever: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                height: height * 0.9,
                color: const Color.fromARGB(255, 212, 210, 210),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RequiredTexts.optimize,
                    SizedBox(width: width / 2, child: RequiredTexts.ourCloud),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                  child: Image.asset(
                                prof1,
                                fit: BoxFit.cover,
                              )),
                              // backgroundImage: AssetImage(prof1),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    "Consolidation services",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: width * 0.18,
                                      child: Text(
                                        "Stay lean and agile as your business grows. Consolidation can reduce cost, real estate and data center inefficiencies.",
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize:
                                          Size(width * 0.1, height * 0.06),
                                      side: BorderSide(),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                    ),
                                    child: Text(
                                      "Learn More",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                  child: Image.asset(
                                prof2,
                                fit: BoxFit.cover,
                              )),
                              // backgroundImage: AssetImage(prof1),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    "Migration services",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: width * 0.18,
                                      child: Text(
                                        "Evolve your data center to advance operational efficiency, reduce risk and increase your competitive advantage.",
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize:
                                          Size(width * 0.1, height * 0.06),
                                      side: BorderSide(),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                    ),
                                    child: Text(
                                      "Learn More",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                  child: Image.asset(
                                prof3,
                                fit: BoxFit.cover,
                              )),
                              // backgroundImage: AssetImage(prof1),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    "IT strategy & assessment",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: width * 0.16,
                                      child: Text(
                                        "Understand your existing state and pave a path to accomplish your goals with a detailed, analytical overview.",
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize:
                                          Size(width * 0.1, height * 0.06),
                                      side: BorderSide(),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                    ),
                                    child: Text(
                                      "Learn More",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                  child: Image.asset(
                                prof4,
                                fit: BoxFit.cover,
                              )),
                              // backgroundImage: AssetImage(prof1),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Column(
                                children: [
                                  Text(
                                    "IT transformation",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: width * 0.18,
                                      child: Text(
                                        "Build a next-generation workplace powered by an infrastructure that drives innovation, execution and agility.",
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize:
                                          Size(width * 0.1, height * 0.06),
                                      side: BorderSide(),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                    ),
                                    child: Text(
                                      "Learn More",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
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
                        SizedBox(
                          width: 400,
                          // height: 300,
                          child: Image.asset(
                            pic2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RequiredTexts.partner,
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.33,
                              child: RequiredTexts.ourteam,
                            ),
                          ],
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * 0.33,
                              child: RequiredTexts.gainTrue,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.33,
                              child: RequiredTexts.isYourTech,
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
                        )
                      ],
                    ),
                  ],
                ),
              )
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
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Professional Services",
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Row(
                      children: [
                        WindowStyleDropdownMenu(
                            dropdownBackgroundColor: Colors.white,
                            buttonTitle: "IT Consulting Services",
                            dropdownItems: [
                              ListTile(
                                title: Text(
                                  "All IT Consulting Services",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Consolidation Services",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "IT Strategy & Assessment",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "IT Transformation",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Migration Services",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ]),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        WindowStyleDropdownMenu(
                            dropdownBackgroundColor: Colors.white,
                            buttonTitle: "Cloud & Data Center Platforms",
                            dropdownItems: [
                              ListTile(
                                title: Text(
                                  "All Cloud & Data Center Platforms",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Cloud & Hybrid Cloud Platforms",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Converged & flash infrastructure",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Hyperconverged infrastructure",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Traditional data center platforms",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ]),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Support",
                style: TextStyle(color: Colors.white),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: width * 0.15,
              height: height * 0.05,
              child: TextFormField(
                style: const TextStyle(fontSize: 12),
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(width: 1.5)),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "How Can I Help You ?",
                    hintStyle:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 14,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
