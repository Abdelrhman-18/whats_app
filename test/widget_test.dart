// This is a basic Flutter widget test.

import 'package:flutter_test/flutter_test.dart';

import 'package:whats_app/main.dart';

void main() {
  testWidgets('Chat screen renders', (WidgetTester tester) async {
    await tester.pumpWidget(const WhatsAppApp());

    // Verify the chat partner name and a sample message are shown.
    expect(find.text('John Safwat'), findsOneWidget);
    expect(find.text('Hello !'), findsWidgets);
  });
}
