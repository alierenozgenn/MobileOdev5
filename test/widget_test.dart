import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Tema değişimi testi', (WidgetTester tester) async {
    // Uygulamayı başlatıyoruz.
    await tester.pumpWidget(MyApp());

    // Başlangıçta butonda "Karanlık Tema" yazısının göründüğünü doğruluyoruz.
    expect(find.text('Karanlık Tema'), findsOneWidget);
    expect(find.text('Açık Tema'), findsNothing);

    // Butona tıklayarak tema değişimini tetikliyoruz.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Tema değiştikten sonra buton yazısının "Açık Tema" olarak güncellendiğini doğruluyoruz.
    expect(find.text('Karanlık Tema'), findsNothing);
    expect(find.text('Açık Tema'), findsOneWidget);
  });
}
