import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class SecureTextView extends StatelessWidget {
  const SecureTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.lock,
          color: AppColors.green,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Your payment details are secure and encrypted.",
          style: TextStyle(
            color: AppColors.green,
          ),
        ),
      ],
    );
  }
}
