import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class OrderInfiItem extends StatelessWidget {
  const OrderInfiItem({
    Key? key, required this.title, required this.value,}) : super(key: key);

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
