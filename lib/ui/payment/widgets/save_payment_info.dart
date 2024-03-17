import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class SavePaymentInfoView extends StatelessWidget {
  const SavePaymentInfoView(
      {super.key, required this.switchValue, this.onChanged});

  final bool switchValue;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.fieldBackgroundColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Save Payment Info",
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
          Switch(
            value: switchValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
