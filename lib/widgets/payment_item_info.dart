import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class PaymentItemInfo extends StatelessWidget {
   const PaymentItemInfo({Key? key, required this.Title, required this.value}) : super(key: key);
 
 final String Title ,value;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         Title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        SizedBox(width: 8), // يفصل بين النصوص بمسافة
        Text(
          value,
          style: Styles.style18,
        ),
      ],
    );
  }
}
