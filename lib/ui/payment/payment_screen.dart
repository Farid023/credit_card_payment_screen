import 'package:credit_card_payment_screen/constants/app_colors.dart';
import 'package:credit_card_payment_screen/extensions/validators.dart';
import 'package:credit_card_payment_screen/ui/payment/widgets/custom_text_form_field.dart';
import 'package:credit_card_payment_screen/ui/payment/widgets/data_cvv_view.dart';
import 'package:credit_card_payment_screen/ui/payment/widgets/save_payment_info.dart';
import 'package:credit_card_payment_screen/ui/payment/widgets/secure_text_view.dart';
import 'package:flutter/material.dart';

import 'widgets/pay_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrounColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgrounColor,
        title: const Text(
          "Payment Details",
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              CustomTextFormField.cardNumber(
                title: "Card Number",
                validator: (value) {
                  return AppValidators().cardNumberValidator(value);
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                title: "Cardholder Name",
                validator: (value) {
                  return AppValidators().cardHolderNameValidator(value);
                },
              ),
              const SizedBox(height: 10),
              const DataCvvView(),
              const SizedBox(height: 30),
              SavePaymentInfoView(
                switchValue: _switchValue,
                onChanged: (value) {
                  _switchValue = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 30),
              const PayButton(),
              const SizedBox(height: 20),
              const SecureTextView(),
            ],
          ),
        ),
      ),
    );
  }
}
