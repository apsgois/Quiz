import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class AuthService {
  static const String backendUrl = 'http://127.0.0.1:8000';

  Future<bool> login(String username, String password) async {
    final url = Uri.parse('$backendUrl/home/login');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      // Sucesso ao fazer login

      return true;
    } else {
      // Falha ao fazer login
      return false;
    }
  }

  Future<bool> create(String username, String password, String email) async {
    final url = Uri.parse('$backendUrl/home/users');

    final response = await http.put(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'password': password,
        'email': email,
      }),
    );
    if (response.statusCode == 200) {
      // Sucesso ao fazer login

      return true;
    } else {
      // Falha ao fazer login
      return false;
    }
  }
}
