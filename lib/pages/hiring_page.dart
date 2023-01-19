import 'package:flutter/material.dart';
import 'package:flutter_homework_4/pages/loading_page.dart';

import '../components/reusable_button.dart';

class HireMe extends StatefulWidget {
  const HireMe({super.key});

  @override
  State<HireMe> createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.cancel_outlined,
            color: Colors.black,
            size: 35.0,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoadingPage())));
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 44.0),
          Center(
            child: Container(
              color: const Color(0xff4fa37f),
              height: 150.0,
              width: 150.0,
              child: Container(
                margin: const EdgeInsets.all(35.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Neo Money",
            style: TextStyle(fontFamily: 'PT_Serif', fontSize: 35.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12.0),
          const Text(
            "We just need a bit more information",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          const Text(
            "1      Basic Information",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "2      Financial Information",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "3       Basic Information",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 250.0),
          Container(
            margin: const EdgeInsets.all(25.0),
            child: BlackButton(
                icon: null,
                label: "Continue",
                onPressed: (() =>
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoadingPage()))))),
          )
        ],
      ),
    );
  }
}
