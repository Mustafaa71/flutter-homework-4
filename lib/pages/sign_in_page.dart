import 'package:flutter/material.dart';
import 'package:flutter_homework_4/pages/cards_page.dart';
import 'package:flutter_homework_4/pages/high_cashback.dart';

import '../components/reusable_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 25.0,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const HighCashBack())));
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 80.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'PT_Serif',
              ),
            ),
            const SizedBox(height: 40.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffeceff1),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffeceff1),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 300.0),
            BlackButton(
              icon: null,
              label: 'Sign in',
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const UserInterface()))),
            ),
            const SizedBox(height: 15.0),
            const Center(
              child: Text(
                "Need new Password",
                style: TextStyle(
                  color: Color(0xff326cf5),
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
