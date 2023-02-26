import 'package:demo/screens/whatwedo/itAssesmentContent.dart';
import 'package:demo/utils/images.dart';
import 'package:flutter/material.dart';
import '../../utils/widgets.dart';
import '../landing page/landing.dart';

class IT_Assesment extends StatefulWidget {
  const IT_Assesment({Key? key}) : super(key: key);

  @override
  State<IT_Assesment> createState() => _WhatWeDoState();
}

class _WhatWeDoState extends State<IT_Assesment> {
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                itAssessment2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WhatWeDoContent.itAsseesmentTopic,
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                // width: 1100,
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: WhatWeDoContent
                                              .itAssesmentContent,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              height: 1.6,
                                              wordSpacing: 1.5,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal)),
                                    ])),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WhatWeDoContent.holistic,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: WhatWeDoContent.ourIt,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              height: 1.6,
                                              wordSpacing: 1.5,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal)),
                                    ])),
                              ),
                            ],
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                documentation,
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
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                upgradeyourBuisness,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WhatWeDoContent.upgrade,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: WhatWeDoContent.weCollabrate,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              height: 1.6,
                                              wordSpacing: 1.5,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal)),
                                    ])),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WhatWeDoContent.partner,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: WhatWeDoContent.partnerWith,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              height: 1.6,
                                              wordSpacing: 1.5,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal)),
                                    ])),
                              ),
                            ],
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 500,
                            height: 280,
                            child: IntrinsicHeight(
                              child: Image.asset(
                                retailService,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
