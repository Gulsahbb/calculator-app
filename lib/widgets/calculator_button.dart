import 'package:calculator/utils/calculator_app_colors.dart';
import 'package:calculator/utils/calculator_app_constants.dart';
import 'package:calculator/utils/calculator_app_styles.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final bool isOperator;
  final VoidCallback onTap;
  const CalculatorButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isOperator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: CalculatorAppConstants.defaultBorderRadius,
      elevation: 5,
      shadowColor: CalculatorAppColors.buttonShadowDark,
      color: Colors.transparent,
      child: Ink(
        decoration:
            isOperator
                ? CalculatorAppStyles.operatorButtonBackground
                : CalculatorAppStyles.numberButtonBackground,
        child: InkWell(
          borderRadius: CalculatorAppConstants.defaultBorderRadius,
          onTap: onTap,
          child: Center(
            child: Text(text, style: CalculatorAppStyles.numberTextStyle),
          ),
        ),
      ),
    );
  }
}
