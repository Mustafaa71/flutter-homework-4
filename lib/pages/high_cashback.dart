import 'package:flutter/material.dart';
import 'package:flutter_homework_4/pages/hiring_page.dart';
import 'package:flutter_homework_4/pages/loading_page.dart';
import 'package:flutter_homework_4/pages/sign_in_page.dart';

import '../components/reusable_button.dart';

class HighCashBack extends StatefulWidget {
  const HighCashBack({super.key});

  @override
  State<HighCashBack> createState() => _HighCashBackState();
}

class _HighCashBackState extends State<HighCashBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                'images/photo2.png',
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(15, 250, 0, 0),
                  child: Row(
                    children: const [
                      InkWell(
                        child: Text(
                          'Credit',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 26.0,
                      ),
                      InkWell(
                        child: Text(
                          'Money',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'High CashBack\nMasterCard',
                  style: TextStyle(fontSize: 40.0, fontFamily: 'PT_Serif', fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.only(bottom: 80.0),
                  padding: const EdgeInsets.only(right: 30.0),
                  child: const Text(
                    'Earn an average of 4% to 6% cashback at thousands of local and national partners.',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 80.0),
                Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_up_outlined,
                        size: 50.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 140.0, right: 140.0),
                        padding: const EdgeInsets.all(13.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(
                          child: Text(
                            'learn more',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                BlackButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => const HireMe()))),
                  label: 'Create Profile',
                  icon: Icons.arrow_right_alt,
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already with Neo?",
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    InkWell(
                      onTap: () =>
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInPage()))),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
