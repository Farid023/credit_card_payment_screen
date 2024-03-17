import 'package:flutter/material.dart';

class AppBorders {
  AppBorders._();

  static final defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide.none,
  );

  static final errorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Colors.red,
    ),
  );
}
