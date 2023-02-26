import 'dart:html';

import 'package:demo/screens/landing%20page/landing.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  ImageCache().maximumSize = 100;
  if (kIsWeb) {
    window.onBeforeUnload.listen((event) {
      // Prevent the browser from reloading assets on scroll
      event.preventDefault();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AVANCER SOLUTIONS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}
