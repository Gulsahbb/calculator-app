import 'package:calculator/widgets/calculator_button_panel.dart';
import 'package:calculator/widgets/calculator_display_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final String headingCalculator = 'Hesap Makinesi';
  String _displayText = '0';

  void _onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        _displayText = '0';
      } else if (value == '=') {
        // İşlem Sonucu Gösterilecek.
      } else {
        if (_displayText == '0') {
          _displayText = value;
        } else {
          _displayText += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(headingCalculator)),
      body: Column(
        children: [
          CalculatorDisplayScreen(displayText: _displayText),
          heightBox(),
          CalculatorButtonPanel(onButtonPressed: _onButtonPressed),
        ],
      ),
    );
  }

  SizedBox heightBox() => SizedBox(height: 10);
}
