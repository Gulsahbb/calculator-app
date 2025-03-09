import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:calculator/utils/calculator_app_constants.dart';
import 'package:flutter/material.dart';

class CalculatorAppStyles {
  static BoxDecoration buttonDecoration({required Color color}) {
    return BoxDecoration(
      color: color,
      borderRadius: CalculatorAppConstants.defaultBorderRadius,
    );
  }

  static BoxDecoration get numberButtonBackground =>
      buttonDecoration(color: CalculatorAppColors.buttonBackground);
  static BoxDecoration get operatorButtonBackground =>
      buttonDecoration(color: CalculatorAppColors.operatorButtonBackground);

  static final BoxDecoration displayDecoration = BoxDecoration(
    color: CalculatorAppColors.backgroundGreen,
    borderRadius: CalculatorAppConstants.defaultBorderRadius,
    boxShadow: CalculatorAppConstants.defaultBoxShadow,
  );
  static final TextStyle numberTextStyle = TextStyle(
    color: CalculatorAppColors.textColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
}
