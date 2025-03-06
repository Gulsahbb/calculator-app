import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:flutter/material.dart';

class CalculatorAppStyles {
  static BoxDecoration buttonDecoration({required Color color}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
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
      ],
    );
  }

  static BoxDecoration get numberButtonBackground =>
      buttonDecoration(color: CalculatorAppColors.buttonBackground);
  static BoxDecoration get operatorButtonBackground =>
      buttonDecoration(color: CalculatorAppColors.operatorButtonBackground);

  static final BoxDecoration displayDecoration = BoxDecoration(
    color: CalculatorAppColors.backgroundGreen,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: CalculatorAppColors.buttonShadowLight,
        offset: const Offset(1, 1),
        blurRadius: 1,
      ),
      BoxShadow(
        color: CalculatorAppColors.buttonShadowDark,
        offset: const Offset(1, 1),
        blurRadius: 1,
      ),
    ],
  );
  static final TextStyle numberTextStyle = TextStyle(
    color: CalculatorAppColors.textColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
}
