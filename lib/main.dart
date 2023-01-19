// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_homework_4/pages/hiring_page.dart';
import 'package:flutter_homework_4/pages/loading_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HireMe(),
    );
  }
}
