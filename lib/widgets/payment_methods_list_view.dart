
import 'package:flutter/material.dart';
import 'package:payment/widgets/payment_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
   PaymentMethodListView({Key? key}) : super(key: key);

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethodItems = [
    'assets/visa.png',
    'assets/paypal.png',
  ];


  int ActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GestureDetector(
              onTap: (){
                ActiveIndex=index;
                setState(() {
                  
                });
              },
              child: PaymentMethodItem(
                isActive: ActiveIndex==index , 
                image: paymentMethodItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}