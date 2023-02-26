// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../utils/images.dart';
import '../../utils/widgets.dart';
import '../landing page/landing.dart';
import 'itTransformationContent.dart';

class IT_Transformation extends StatefulWidget {
  const IT_Transformation({Key? key}) : super(key: key);

  @override
  State<IT_Transformation> createState() => _IT_TransformationState();
}

class _IT_TransformationState extends State<IT_Transformation> {
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
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                                itExpert,
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
                              IT_Transform.itTransform,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: IT_Transform.ourIt,
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
                              IT_Transform.unlock,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: IT_Transform.ourEffective,
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
                                unLockYourPotential,
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
                                customer,
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
                              IT_Transform.designed,
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 1100,
                                child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: IT_Transform.withOur,
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
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: IT_Transform.partner),
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
                                text: IT_Transform.partnerWith,
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
      ),
    );
  }
}
