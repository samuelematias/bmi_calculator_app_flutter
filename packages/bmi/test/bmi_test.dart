import 'package:bmi/bmi.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('calculateBMI', () {
    test('return right value = 61.7', () {
      final calculate = calculateBMI(200, 1.80);

      expect(formattedBmi(calculate), "61.7");
    });

    test('return empty string', () {
      try {
        calculateBMI(200, double.tryParse("1,80"));
      } on NoSuchMethodError catch (e) {
        expect(e.toString(),
            contains("NoSuchMethodError: The method '*' was called on null"));
        return;
      }
    });
  });
}
