import 'package:bmi_calculator_app_flutter/bmi_calculation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> _createWidget(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: BmiCalculationPage(),
      ),
    );
  }

  group('BmiCalculationPage', () {
    testWidgets('validate pageTitle', (WidgetTester tester) async {
      await _createWidget(tester);

      expect(find.text('BMI Calculator'), findsOneWidget);
    });
  });
}
