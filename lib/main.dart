import 'package:credit_card_payment_screen/constants/app_colors.dart';
import 'package:credit_card_payment_screen/ui/payment/payment_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.backgrounColor),
        useMaterial3: true,
      ),
      home: const PaymentScreen(),
    );
  }
}
