import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  final VoidCallback? onTap;
  final String text ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child:  Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.style20,
          ),
        ),
      ),
    );
  }
}
