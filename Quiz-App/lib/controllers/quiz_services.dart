import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_app/models/Questions.dart';

class QuizService {
  getQuestionsByTheme() async {
    var backendUrl = 'http://localhost:8000';
    final url = Uri.parse('$backendUrl/question');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<Question>;
      return data
          .map(
            (question) => Question(
                id: question.id,
                question: question.question,
                options: List<String>.from(question.options),
                answer: question.answer),
          )
          .toList();
    } else {
      throw Exception('Failed to load questions');
    }
  }
}
