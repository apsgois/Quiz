import 'package:quiz_app/controllers/quiz_services.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

//const List sample_data = getQuestions();

const List sample_data1 = [
  {
    "id": 1,
    "question":
        "Python foi nomeado em homenagem a qual famoso grupo de comédia britânico?",
    "options": ["The Beatles", "Monty Python", "The Rolling Stones", "The Who"],
    "answer_index": 1
  },
  {
    "id": 2,
    "question": "Em que ano o Python foi lançado pela primeira vez?",
    "options": ["1989", "1991", "1993", "1995"],
    "answer_index": 1
  },
  {
    "id": 3,
    "question": "Qual paradigma de programação o Python suporta?",
    "options": [
      "Procedural",
      "Orientado a objetos",
      "Funcional",
      "Todos os acima"
    ],
    "answer_index": 3
  },
  {
    "id": 4,
    "question": "Qual é o maior número que pode ser representado no Python?",
    "options": ["2^32 - 1", "2^64 - 1", "2^128 - 1", "Não há limite"],
    "answer_index": 3
  },
  {
    "id": 5,
    "question": "Quem é o criador do Python?",
    "options": [
      "Guido van Rossum",
      "Dennis Ritchie",
      "Bjarne Stroustrup",
      "Larry Wall"
    ],
    "answer_index": 0
  }
];
