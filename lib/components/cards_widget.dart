import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String balance1;
  final String? balance2;
  final String state1;
  final String? state2;
  final String hint;
  final IconData icon;
  final Color? color;

  const CardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.balance1,
    required this.balance2,
    required this.state1,
    required this.state2,
    required this.hint,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 4.0,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    balance1,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  balance2 != null
                      ? Text(
                          balance2 ?? '',
                          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              Row(
                children: [
                  Text(
                    state1,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffa1aaaf),
                    ),
                  ),
                  const Spacer(),
                  state2 != null
                      ? Text(
                          state2 ?? '',
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffa1aaaf),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: color,
                    ),
                    const SizedBox(width: 16.0),
                    Text(
                      hint,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff757a7e),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
