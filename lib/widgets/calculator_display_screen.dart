import 'package:flutter/material.dart';

class CalculatorDisplayScreen extends StatelessWidget {
  final String displayText;
  const CalculatorDisplayScreen({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(20),
        child: Text(
          displayText,
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
