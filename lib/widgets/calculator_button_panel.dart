import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorButtonPanel extends StatelessWidget {
  final Function(String) onButtonPressed;
  CalculatorButtonPanel({super.key, required this.onButtonPressed});

  /* final List<List<String>> buttons = const [
    ["C", "()", "%", "^"],
    ["7", "8", "9", "/"],
    ["4", "5", "6", "x"],
    ["1", "2", "3", "-"],
    [",", "0", "=", "+"],
  ];*/
  final buttons = [
    "C",
    "()",
    "%",
    "^",
    "7",
    "8",
    "9",
    "/",
    "4",
    "5",
    "6",
    "x",
    "1",
    "2",
    "3",
    "-",
    ",",
    "0",
    "=",
    "+",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CalculatorButton(
            text: buttons[index],
            onTap: () => onButtonPressed(buttons[index]),
          );
        },
      ),
    );
    /* return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          buttons.map((row) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  row.map((btnText) {
                    return Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CalculatorButton(
                          text: btnText,
                          onTap: () => onButtonPressed(btnText),
                        ),
                      ),
                    );
                  }).toList(),
            );
          }).toList(),
    );*/
  }
}
