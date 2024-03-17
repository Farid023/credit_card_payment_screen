
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
              Size(MediaQuery.of(context).size.width, 60)),
          backgroundColor:
          const MaterialStatePropertyAll(AppColors.btnColor),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)))),
      child: const Text(
        "Pay \$130",
        style: TextStyle(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}