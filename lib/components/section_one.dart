import 'package:flutter/material.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.stars,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Text(
                      "US\$ 0.03",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffedeff1),
                ),
                child: GestureDetector(
                  child: const Icon(
                    Icons.alarm,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffedeff1),
                ),
                child: GestureDetector(
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
