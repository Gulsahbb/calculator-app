import 'package:calculator/utils/calculator_app_colors.dart';
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
      backgroundColor: CalculatorAppColors.appBackground,
      body: SafeArea(
        child: Column(
          children: [
            _buildTopSection(),
            CalculatorDisplayScreen(displayText: _displayText),
            CalculatorAppConstants.defaultHeightBox(),
            CalculatorButtonPanel(onButtonPressed: _onButtonPressed),
          ],
        ),
      ),
    );
  }
}

Widget _buildTopSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.menu, color: Colors.black54),
          onPressed: () {
            // Drawer açma işlemi
          },
        ),
        Switch(
          value: false,
          onChanged: (value) {
            // Tema değişim işlemi
          },
          activeColor: Colors.white,
          inactiveThumbColor: Colors.white,
        ),
      ],
    ),
  );
}
