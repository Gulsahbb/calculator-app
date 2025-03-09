import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:flutter/material.dart';

class CalculatorAppConstants {
  static const EdgeInsets defaultPadding = EdgeInsets.all(20);
  static const EdgeInsets defaultMargin = EdgeInsets.all(16);
  static BorderRadius defaultBorderRadius = BorderRadius.circular(20);
  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: CalculatorAppColors.buttonShadowLight,
      offset: const Offset(1, 2),
      blurRadius: 1,
    ),
    BoxShadow(
      color: CalculatorAppColors.buttonShadowDark,
      offset: const Offset(1, 2),
      blurRadius: 1,
    ),
  ];
  static SizedBox defaultHeightBox() => const SizedBox(height: 10);
}
