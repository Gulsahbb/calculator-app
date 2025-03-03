import 'package:flutter/material.dart';

class CalculatorDisplayScreen extends StatelessWidget {
  final String displayText;
  const CalculatorDisplayScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(20),
        child: Text(
          displayText,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
