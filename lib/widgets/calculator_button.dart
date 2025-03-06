import 'package:calculator/utils/calculator_app_colors.dart';
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
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                isOperator
                    ? CalculatorAppColors.operatorButtonBackground
                    : CalculatorAppColors.buttonBackground,

            /*      boxShadow: [
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
            ],*/
          ),
          child: Center(
            child: Text(text, style: CalculatorAppStyles.numberTextStyle),
          ),
        ),
      ),
    );
    /*   return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            isOperator
                ? CalculatorAppStyles.operatorButtonBackground
                : CalculatorAppStyles.numberButtonBackground,
        child: Center(
          child: Text(text, style: CalculatorAppStyles.numberTextStyle),
        ),
      ),
    );*/
  }
}
