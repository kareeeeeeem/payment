import 'package:flutter/material.dart';
import 'package:payment/widgets/custom_check_icon.dart';
import 'package:payment/widgets/custom_dash_line.dart';
import 'package:payment/widgets/thank_you_cart_view.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child:ThankYouCardView(),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.5 - 25,
          bottom: MediaQuery.of(context).size.height * 0.4,
          child: const CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2 + 20,
          top: 150,
          left: 20 + 16,
          right: 20 + 16,
          child: const CustomDashLine(),
        ),
        Positioned(
          left: -20,
          bottom: MediaQuery.of(context).size.height * 0.2,
          child: const CustomCheckIcon(),
        ),
        Positioned(
          left: 20,
          bottom: MediaQuery.of(context).size.height * 0.2,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        const Positioned(
          top: -50,
          left: 0 ,
          right: 0,
          child: CustomCheckIcon(),
        )
      ],
    );
  }
}
