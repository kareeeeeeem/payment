import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({Key? key, this.isActive = false, required this.image}) : super(key: key);

  final bool isActive;
  final String image ;



  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1.50,
            color: Color(0xFF34A853),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xFF34A853),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isActive ? Colors.blue : Colors.white,
        ),
        child: Image.asset(
          image,
          // Set the width of the image as needed
         // Set the height of the image as needed
        ),
      ),
    );
  }
}
