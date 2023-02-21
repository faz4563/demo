import 'package:demo/screens/whatwedo/consolidationContent.dart';
import 'package:flutter/material.dart';

import '../../utils/widgets.dart';
import '../landing page/landing.dart';
import 'itAssesmentContent.dart';

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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: ConsolidationContent.consolidation),
                  ),
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: ConsolidationContent.migration),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: ConsolidationContent.throughOur,
                              style: const TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: ConsolidationContent.strategic),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
                    child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          TextSpan(
                              text: ConsolidationContent.ourTeamCollabrate,
                              style: const TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  wordSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: ConsolidationContent.partner_consolidation),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 1100,
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ])),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
