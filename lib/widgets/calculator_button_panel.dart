import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorButtonPanel extends StatelessWidget {
  final Function(String) onButtonPressed;
  CalculatorButtonPanel({super.key, required this.onButtonPressed});

  /* final List<List<String>> buttons = [
    ['C', '()', '%', '÷'],
    ['7', '8', '9', '×'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['+/-', '0', ',', '='],
  ];
*/
  //final List<String> operators = ['C', '+/-', '%', '÷', '×', '-', '+', '=', '()', ','];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(height: 100, width: 50, color: Colors.amber),
                Container(height: 100, width: 50, color: Colors.red),
                Container(height: 100, width: 50, color: Colors.green),
              ],
            ),
            Container(
              width: 300,
              height: 200,
              color: Colors.blueGrey,
              child: Row(children: [Text('100'), Text('30 + 40 + 20+ 10')]),
            ),
            Row(children: [Icon(Icons.replay_outlined), Icon(Icons.backspace_outlined)]),

            GridView.count(crossAxisCount: 5, mainAxisSpacing: 16, crossAxisSpacing: 16),
          ],
        ),
      ),
    );
    /* return Column(
      children: buttons.map((row) {
        return Expanded(
          child: Row(
            children: row.map((buttonText) {
              return Expanded(child: CalculatorButton(text: buttonText, onTap: onButtonPressed));
            }),
          ),
        );
      }),
    );*/
    /*  return GridView.builder(
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
    );*/
  }
}
