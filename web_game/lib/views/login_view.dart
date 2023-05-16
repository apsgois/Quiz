import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../services/auth_service.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover o botão de voltar
        title: Text('Tela de Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              key: ValueKey(
                  'username_field'), // Identificador para o campo de texto do nome de usuário
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Nome de usuário'),
            ),
            TextField(
              key: ValueKey(
                  'password_field'), // Identificador para o campo de texto da senha
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              key: ValueKey(
                  'login_button'), // Identificador para o botão de login
              onPressed: () async {
                // Lógica para realizar o login
                String username = _usernameController.text;
                String password = _passwordController.text;

                AuthService authService = AuthService();
                bool loggedIn = await authService.login(username, password);

                if (loggedIn == true) {
                  // Lógica para direcionar para a próxima tela após o login bem-sucedido
                  Navigator.pushNamed(context, '/');
                } else {
                  Fluttertoast.showToast(
                    msg: 'Falha ao fazer login',
                    gravity: ToastGravity.CENTER,
                    toastLength: Toast.LENGTH_LONG,
                    fontSize: 24.0,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                  );
                }
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navegar para a tela de cadastro de usuário
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Criar conta'),
            ),
          ],
        ),
      ),
    );
  }
}
