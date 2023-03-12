import 'package:demo/screens/whatwedo/consolidationContent.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';
import '../../utils/widgets.dart';

class Consolidation extends StatefulWidget {
  const Consolidation({Key? key}) : super(key: key);

  @override
  State<Consolidation> createState() => _ConsolidationState();
}

class _ConsolidationState extends State<Consolidation> {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                oilService,
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
                              ConsolidationContent.consolidation,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 1100,
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: ConsolidationContent.atAvancer,
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
                              ConsolidationContent.migration,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: ConsolidationContent.throughOur,
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
                                strategiCustomization,
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
                                strategicSolution,
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
                              ConsolidationContent.strategic,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: ConsolidationContent
                                              .ourTeamCollabrate,
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
                              ConsolidationContent.partner_consolidation,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: ConsolidationContent
                                              .partnerWith_consolidation,
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
