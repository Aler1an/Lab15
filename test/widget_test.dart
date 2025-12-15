import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/main.dart';

void main() {
  testWidgets('App title is correct', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(
      find.text("AV-31: Maksym's last Flutter App"),
      findsOneWidget,
    );
  });

  testWidgets('FloatingActionButton with Icons.person exists',
          (WidgetTester tester) async {
        await tester.pumpWidget(const MyApp());

        expect(find.byIcon(Icons.person), findsOneWidget);
      });

  testWidgets('Counter increments by 6', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('x = 0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('x = 6'), findsOneWidget);
  });
}
