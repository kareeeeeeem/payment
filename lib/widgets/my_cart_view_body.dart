import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentation/views/payment_details.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/widgets/cart_info_Item.dart';
import 'package:payment/widgets/payment_methods_list_view.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),

          Expanded(child: Image.asset('assets/box.png')),

          const SizedBox(
            height: 18,
          ),

          const OrderInfiItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfiItem(
            title: 'Discount',
            value: '\$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfiItem(
            title: 'Shipping',
            value: '\$0',
          ),

          const Divider(
            thickness: 2,
            height: 34,
            color: Colors.white,
          ),

          CustomButton(
            text: 'complet payment',
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetalisView(); // Fixed the syntax here
              // }));
            
            showModalBottomSheet(context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
            
             builder: (context)
            {
              return const paymentButtonModelSheeet();
            });
            
            },
          ),
        ],
      ),
    );
  }
}
