import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../services/auth_service.dart';

class RegistrationView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Nome de usuário'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                // Lógica para realizar o cadastro de usuário
                String username = _usernameController.text;
                String password = _passwordController.text;
                String email = _emailController.text;

                AuthService authService = AuthService();
                bool loggedIn =
                    await authService.create(username, password, email);

                if (loggedIn == true) {
                  Fluttertoast.showToast(
                    msg: 'Cadastro realizado com sucesso!!',
                    gravity: ToastGravity.CENTER,
                    toastLength: Toast.LENGTH_LONG,
                    fontSize: 24.0,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                  );
                  // Lógica para direcionar para a próxima tela após o login bem-sucedido
                  Navigator.pushNamed(context, '/login');
                }
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
