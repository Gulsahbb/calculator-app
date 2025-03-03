import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorButtonPanel extends StatelessWidget {
  final Function(String) onButtonPressed;
  const CalculatorButtonPanel({super.key, required this.onButtonPressed});

  final List<List<String>> buttons = const [
    ["7", "8", "9", "/"],
    ["4", "5", "6", "×"],
    ["1", "2", "3", "-"],
    ["C", "0", "=", "+"],
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children:
            buttons.map((row) {
              return Row(
                children:
                    row.map((btnText) {
                      return Expanded(
                        child: CalculatorButton(
                          text: btnText,
                          onTap: () => onButtonPressed(btnText),
                        ),
                      );
                    }).toList(),
              );
            }).toList(),
      ),
    );
  }
}
