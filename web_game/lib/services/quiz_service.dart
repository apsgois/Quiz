import 'package:web_game/models/question_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class QuizService {
  Future<List<QuestionModel>> getQuestions() async {
    final String jsonString =
        await rootBundle.loadString('assets/questions.json');
    final List<dynamic> jsonList = json.decode(jsonString);

    List<QuestionModel> questions = [];
    for (var json in jsonList) {
      questions.add(QuestionModel(
        question: json['question'],
        options: List<String>.from(json['options']),
        correctAnswerIndex: json['correctAnswerIndex'],
      ));
    }

    return questions;
  }
}
