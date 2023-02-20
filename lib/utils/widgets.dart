// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
  int currentIndex = 0;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: widget.timeInterval), (Timer t) {
      setState(() {
        currentIndex++;
        if (currentIndex >= widget.texts.length) {
          currentIndex = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: widget.texts
            .map((e) => Center(
                  child: Text(
                    e,
                    style: widget.textStyle,
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
