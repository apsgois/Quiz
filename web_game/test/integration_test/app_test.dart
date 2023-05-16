import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:web_game/main.dart' as app;
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Login integration test', (WidgetTester tester) async {
    app.main();

    
    await tester.pumpAndSettle();

    
    final usernameField = find.byKey(const Key('username_field'));
    final passwordField = find.byKey(const Key('password_field'));
    final loginButton = find.byKey(const Key('login_button'));

    
    await tester.enterText(usernameField, 'admin');
    await tester.enterText(passwordField, 'admin');

   
    await tester.tap(loginButton);

    
    await tester.pumpAndSettle();

    
    final nextScreen = find.text('Próxima Tela');
    expect(nextScreen, findsOneWidget);
  });
}