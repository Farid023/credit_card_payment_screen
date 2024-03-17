import 'package:credit_card_payment_screen/constants/app_borders.dart';
import 'package:credit_card_payment_screen/constants/app_colors.dart';
import 'package:credit_card_payment_screen/constants/app_mask_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.validator,
  })  : inputFormatters = null,
        keyboardType = TextInputType.text,
        maxLength = null;

  CustomTextFormField.cardNumber({
    super.key,
    required this.title,
    this.validator,
  })  : keyboardType = TextInputType.number,
        inputFormatters = [AppMaskFormatter.cardMaskFormatter],
        maxLength = null;

   CustomTextFormField.cvv({
    super.key,
    required this.title,
    this.validator,
  })  : keyboardType = TextInputType.number,
        inputFormatters = [AppMaskFormatter.cvvMaskFormatter],
        maxLength = 3;

  CustomTextFormField.date({
    super.key,
    required this.title,
    this.validator,
  })  : keyboardType = TextInputType.number,
        inputFormatters = [AppMaskFormatter.dateMaskFormatter],
        maxLength = null;

  final String title;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          validator: validator,
          maxLength: maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(color: AppColors.white),
          decoration: InputDecoration(
              counterText: "",
              fillColor: AppColors.fieldBackgroundColor,
              filled: true,
              border: AppBorders.defaultInputBorder,
              errorBorder: AppBorders.errorInputBorder),
        )
      ],
    );
  }
}
