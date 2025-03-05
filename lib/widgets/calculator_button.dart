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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: CalculatorAppStyles.buttonDecoration,
        child: Center(
          child: Text(
            text,
            style:
                isOperator
                    ? CalculatorAppStyles.operatorTextStyle
                    : CalculatorAppStyles.numberTextStyle,
          ),
        ),
      ),
    );
    /*  return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondaryFixedDim,
            offset: Offset(1, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Text(text, style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
*/
  }
}
