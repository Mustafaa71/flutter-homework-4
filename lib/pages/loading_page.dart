import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_homework_4/pages/high_cashback.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadingDuration();
  }

  Future loadingDuration() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) => const HighCashBack())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Image(
        image: AssetImage('images/Neo Financial iOS 0.png'),
      ),
    );
  }
}
