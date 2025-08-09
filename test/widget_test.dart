// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('Calculator app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CalculatorApp());

    // Verify that the calculator displays 0 initially.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('Naiyo Calculator'), findsOneWidget);

    // Test basic calculator functionality
    // Tap the '1' button
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    // Tap the '+' button
    await tester.tap(find.text('+'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    // Tap the '2' button
    await tester.tap(find.text('2'));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);

    // Tap the '=' button
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);
  });
}
