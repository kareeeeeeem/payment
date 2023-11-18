import 'package:flutter/material.dart';

class CustomDashLine extends StatelessWidget {
  const CustomDashLine({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        50,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              color: const Color(0xff888888),
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
