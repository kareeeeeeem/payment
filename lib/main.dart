import 'package:flutter/material.dart';
//import 'package:payment/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment/widgets/my_cart_view_body.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CheckOutApp(),
    ),
  );
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyCartViewBody();
  }
}
