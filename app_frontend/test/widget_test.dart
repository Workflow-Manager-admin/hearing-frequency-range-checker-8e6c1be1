import 'package:flutter_test/flutter_test.dart';
import 'package:app_frontend/main.dart';

// Simple smoke test - checks main widgets are present in home screen.
void main() {
  testWidgets('Central "Start Test" button and intro displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const HearingTestApp());

    // Should see welcome message and the start button even after a rewrite.
    expect(find.text("Test Your Hearing Range"), findsOneWidget);
    expect(find.text("Start Test"), findsOneWidget);
  });

  testWidgets('App bar title is correct', (WidgetTester tester) async {
    await tester.pumpWidget(const HearingTestApp());
    // Should see correct AppBar text.
    expect(find.text("Hearing Frequency Range Test"), findsOneWidget);
  });
}
