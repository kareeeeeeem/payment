import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class YourParentWidget extends StatelessWidget {
  const YourParentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // ... other widgets ...

        TotalPrice(
          title: 'Total',
          value: '\$42.97',
        ),

        // ... other widgets ...
      ],
    );
  }
}

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
      ],
    );
  }
}
