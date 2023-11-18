import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';
import 'package:payment/widgets/card_info.dart';
import 'package:payment/widgets/payment_item_info.dart';
import 'package:payment/widgets/total_price.dart';

Container ThankYouCardView() {
  return Container(
    width: double.infinity,
    decoration: ShapeDecoration(
      color: const Color.fromARGB(150, 40, 241, 33),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
      child: Column(
        children: [
          const Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: Styles.style24,
          ),
          const Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: Styles.style18bold,
          ),
          const SizedBox(height: 42),
          const PaymentItemInfo(
            Title: 'Date',
            value: '01/24/2023',
          ),
          const SizedBox(height: 20),
          const PaymentItemInfo(
            Title: 'Time',
            value: '10:15 AM',
          ),
          const SizedBox(height: 20),
          const PaymentItemInfo(
            Title: 'To',
            value: 'Sam Louis',
          ),
          const Divider(
            thickness: 2,
            height: 60,
          ),
          const TotalPrice(title: 'Total', value: '50'),
          const SizedBox(height: 30),

          const CardInfoWidget(),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.scanner), // Replace with the actual icon data
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: 
                const Center(child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF34A853),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: (MediaQuery.of(context).size.height * 0.2 + 20) / 2 - 29),
        ],
      ),
    ),
  );
}
