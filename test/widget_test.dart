import 'package:flutter_test/flutter_test.dart';

import 'package:taskflow/main.dart';

void main() {
  testWidgets('muestra la pantalla de bienvenida', (WidgetTester tester) async {
    await tester.pumpWidget(const TaskFlowApp());

    expect(find.text('\u00a1Hola, Marly Sinay Moreira Garc\u00eda!'), findsOneWidget);
    expect(find.text('Tareas pendientes: 5'), findsOneWidget);
  });
}
