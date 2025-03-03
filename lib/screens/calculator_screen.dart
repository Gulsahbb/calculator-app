import 'package:calculator/utils/calculator_app_constants.dart';
import 'package:calculator/utils/calculator_logic.dart';
import 'package:calculator/widgets/calculator_button_panel.dart';
import 'package:calculator/widgets/calculator_display_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  //final String headingCalculator = 'Hesap Makinesi';
  String _displayText = '0';

  void _onButtonPressed(String value) {
    setState(() {
      _displayText = CalculatorLogic.updateDisplay(_displayText, value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        /* title: Text(
          headingCalculator,
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
        backgroundColor: Theme.of(context).colorScheme.onSecondaryFixedVariant,
        toolbarHeight: 100,*/
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CalculatorDisplayScreen(displayText: _displayText),
          CalculatorAppConstants.defaultHeightBox(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CalculatorButtonPanel(onButtonPressed: _onButtonPressed),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
    );
  }
}
