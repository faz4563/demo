// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo/screens/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IndustriesWeServe extends StatelessWidget {
  const IndustriesWeServe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff071d56),
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Industries We Serve\n",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                SizedBox(
                  width: 1200,
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: [
                        TextSpan(
                            text:
                                "                           We are not just another IT solutions provider capitalizing on the big data boom. We have a cause. Our goal is to help SMBs unlock the potential of advanced IT technology and compete with larger corporations and organizations. Our knowledge of SMBs and multi-disciplinary expertise have enabled us to offer unparalleled IT Solutions to businesses from various industries. Currently, we serve more than six industries that play a crucial role in nation-building and the global market.",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ])),
                ),
              ]),
        ),
      ),
    );
  }
}
