import 'package:flutter/material.dart';
import 'package:payment/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'), // Updated the title
      body: const MyCartViewBody(),
    );
  }

  AppBar buildAppBar({required String title}) {
    return AppBar(
      title: Text(title),
      // Add other AppBar configurations as needed
    );
  }
}
