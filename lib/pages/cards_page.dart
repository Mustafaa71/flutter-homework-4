// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/cards_widget.dart';
import '../components/section_one.dart';

class UserInterface extends StatefulWidget {
  const UserInterface({super.key});

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Section1(),
              // SizedBox(height: 16.0),
              CardWidget(
                title: 'Credit',
                balance1: 'US\$20.11',
                balance2: 'US\$3,979.89',
                state1: 'Current Balance',
                state2: 'Available',
                icon: Icons.check_circle_rounded,
                color: Colors.grey,
                hint: 'Statement available 26 Nov',
              ),
              CardWidget(
                title: 'Money',
                balance1: 'US\$100.03',
                balance2: null,
                state1: 'Total balance',
                state2: null,
                icon: Icons.trending_up_sharp,
                color: Colors.green,
                hint: 'US\$0.03 earned',
              ),
              CardWidget(
                title: 'Invest',
                balance1: 'US\$0.00',
                balance2: null,
                state1: 'Total balance',
                state2: null,
                icon: Icons.trending_up_sharp,
                color: Colors.grey,
                hint: 'US\$0.03 earned all time',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
