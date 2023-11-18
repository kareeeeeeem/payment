import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_appbar.dart';

class PaymentDetalisView extends StatelessWidget {
  const PaymentDetalisView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(title:'payment Details'),
    );
  }
}