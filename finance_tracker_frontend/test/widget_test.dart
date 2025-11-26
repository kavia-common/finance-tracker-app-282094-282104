import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finance_tracker_frontend/main.dart';

void main() {
  testWidgets('App loads login or home without crashing', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    await tester.pumpWidget(const FinanceTrackerApp());
    await tester.pump(const Duration(milliseconds: 100));
    // We expect either a login form or some scaffold to be present.
    expect(find.byType(Scaffold), findsWidgets);
  });
}
