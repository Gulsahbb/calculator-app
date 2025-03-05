import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:flutter/material.dart';

class CalculatorAppStyles {
  static final BoxDecoration buttonDecoration = BoxDecoration(
    color: CalculatorAppColors.buttonBackground,
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
    fontWeight: FontWeight.w500,
  );

  static final TextStyle operatorTextStyle = TextStyle(
    color: CalculatorAppColors.operatorColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
}
