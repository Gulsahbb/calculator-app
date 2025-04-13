import 'package:calculator/utils/calculator_app_constants.dart';
import 'package:calculator/utils/calculator_app_styles.dart';
import 'package:flutter/material.dart';

class CalculatorDisplayScreen extends StatelessWidget {
  final String displayText;
  const CalculatorDisplayScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueGrey);
    /*  return Container(
      alignment: Alignment.centerRight,
      padding: CalculatorAppConstants.defaultPadding,
      margin: CalculatorAppConstants.defaultMargin,
      decoration: CalculatorAppStyles.displayDecoration,
      child: _DisplayTextWidget(displayText: displayText),
    );*/
  }
}

class _DisplayTextWidget extends StatelessWidget {
  const _DisplayTextWidget({required this.displayText});

  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Text(displayText, style: Theme.of(context).textTheme.displayLarge);
  }
}
