
import 'package:flutter/material.dart';

import '../../../extensions/validators.dart';
import 'custom_text_form_field.dart';

class DataCvvView extends StatelessWidget {
  const DataCvvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: CustomTextFormField.date(
            title: "Expiration Date (MM/YY)",
            validator: (value) {
              return AppValidators().dateValidator(value);
            },
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: CustomTextFormField.cvv(
            title: "CVV Code",
            validator: (value) {
              return AppValidators().cvvCodeValidator(value);
            },
          ),
        ),
      ],
    );
  }
}
