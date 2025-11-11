import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_menu_toast/main.dart';

void main() {
  testWidgets('App shows app bar and body text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the app bar title is present
    expect(find.text('Menu Toast App'), findsOneWidget);

    // Verify the body text is present
    expect(find.text('Tap the menu in the app bar'), findsOneWidget);
  });
}
