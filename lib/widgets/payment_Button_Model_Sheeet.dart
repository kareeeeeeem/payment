
import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/widgets/payment_methods_list_view.dart';

class paymentButtonModelSheeet extends StatelessWidget {
  const paymentButtonModelSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          
          SizedBox(height: 16),

          CustomButton(text: 'continue', onTap: () {  },),
    
        ],
      ),
    );
  }
}