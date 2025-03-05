import 'package:calculator/utils/calculator_app_styles.dart';
import 'package:flutter/material.dart';

class CalculatorDisplayScreen extends StatelessWidget {
  final String displayText;
  const CalculatorDisplayScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(16),
        decoration: CalculatorAppStyles.displayDecoration,
        child: Text(
          displayText,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
