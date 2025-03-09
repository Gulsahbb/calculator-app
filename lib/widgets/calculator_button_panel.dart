import 'package:calculator/utils/calculator_app_constants.dart';
import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorButtonPanel extends StatelessWidget {
  final Function(String) onButtonPressed;
  CalculatorButtonPanel({super.key, required this.onButtonPressed});

  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    '^',
    '7',
    '8',
    '9',
    '÷',
    '4',
    '5',
    '6',
    '×',
    '1',
    '2',
    '3',
    '-',
    ',',
    '0',
    '=',
    '+',
  ];

  final List<String> operators = [
    'C',
    '+/-',
    '%',
    '÷',
    '×',
    '-',
    '+',
    '=',
    '^',
    ',',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: _CreateButton(
        operators: operators,
        buttons: buttons,
        onButtonPressed: onButtonPressed,
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    required this.operators,
    required this.buttons,
    required this.onButtonPressed,
  });

  final List<String> operators;
  final List<String> buttons;
  final Function(String p1) onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: CalculatorAppConstants.defaultPadding,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Sütun sayısı
        //childAspectRatio: 1,
        crossAxisSpacing: 16, // Sütunlar arası boşluk
        mainAxisSpacing: 16, // satırlar arası boşluk
      ),
      itemCount: 20, // item sayısı
      itemBuilder: (context, index) {
        bool isOperator = operators.contains(buttons[index]);
        return CalculatorButton(
          text: buttons[index],
          isOperator: isOperator,
          onTap: () => onButtonPressed(buttons[index]),
        );
      },
    );
  }
}
