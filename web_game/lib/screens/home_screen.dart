import 'package:flutter/material.dart';
import 'package:web_game/models/question_model.dart';
import 'package:web_game/services/quiz_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final QuizService _quizService = QuizService();
  List<QuestionModel> _questions = [];

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  void _loadQuestions() {
    _questions = _quizService.getQuestions() as List<QuestionModel>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: ListView.builder(
        itemCount: _questions.length,
        itemBuilder: (context, index) {
          final question = _questions[index];
          return ListTile(
            title: Text(question.question),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...question.options.map((option) {
                  return RadioListTile<int>(
                    title: Text(option),
                    value: question.options.indexOf(option),
                    groupValue:
                        null, // Adicione a lógica para controlar a resposta selecionada
                    onChanged: (value) {
                      // Adicione a lógica para atualizar a resposta selecionada
                    },
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
