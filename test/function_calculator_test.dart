import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/function_calculator.dart';

void main() {
  test('FunctionCalculator calculates y = 10*x - 16*x^3 correctly', () {
    final calculator = FunctionCalculator();

    expect(calculator.calculate(0), 0);
    expect(calculator.calculate(1), 10 - 16);
    expect(calculator.calculate(2), 20 - 128);
  });
}
