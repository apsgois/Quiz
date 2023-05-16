import 'package:flutter/material.dart';
import 'package:web_game/screens/create_question_view.dart';
import 'package:web_game/screens/home_screen.dart';
import 'package:web_game/screens/perfil__screen.dart';
import 'package:web_game/screens/quiz_screen.dart';
import 'package:web_game/views/login_view.dart';
import 'package:web_game/views/registration_view.dart';
import 'dart:io';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => LoginView(),
        '/register': (context) => RegistrationView(),
        '/quiz': (context) => CreateQuestionView(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    QuizScreen(),
    CreateQuestionView(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Criar Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
