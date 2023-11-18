import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/core/widgets/custom_credit_card.dart';
import 'package:payment/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey, autpovalidatedMode: null,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentContext!.save();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const ThankYouView();
                  }));
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'payment',
            ),
          ),
        ),
      ],
    );
  }
}
