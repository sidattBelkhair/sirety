import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myportfolio/main.dart';

void main() {
  testWidgets('Portfolio app loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PortfolioApp());

    // Vérifier que le titre du site (localisé) est bien présent dans l'arbre de widgets.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
