class CalculatorLogic {
  static String updateDisplay(String currentDisplay, String value) {
    if (value == 'C') {
      return '0';
    } else if (value == '=') {
      return currentDisplay;
    } else {
      if (currentDisplay == '0') {
        return value;
      } else {
        return currentDisplay + value;
      }
    }
  }
}
