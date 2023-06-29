import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';

void main() {
  group('QuestionController', () {
    late QuestionController questionController;

    setUp(() {
      questionController = QuestionController();
    });

    test('1-Verifica se as perguntas foram carregadas corretamente', () {
      expect(questionController.questions.length, greaterThan(0));
    });
    test('2-Verifica se a pergunta atual é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.question,
          "Python foi nomeado em homenagem a qual famoso grupo de comédia britânico?");
    });

    test('3-Verifica se a resposta correta é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.answer, 1);
    });

    test('4-Verifica se a resposta selecionada é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.options[0], "The Beatles");
    });

    test('5-Verifica se a resposta selecionada é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.options[1], "Monty Python");
    });

    test('6-Verifica se a resposta selecionada é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.options[2], "The Rolling Stones");
    });

    test('7-Verifica se a resposta selecionada é carregada corretamente', () {
      final question = questionController.questions[0];
      expect(question.options[3], "The Who");
    });

    // TESTE NEGATIVO
    test('8-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.options[0], isNot("Monty Python"));
    });

    test('9-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.options[1], isNot("The Beatles"));
    });

    test('10-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.options[2], isNot("The Who"));
    });

    test('11-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.options[3], isNot("The Rolling Stones"));
    });

    test('12-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.answer, isNot(2));
    });

    test('13-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.answer, isNot(3));
    });

    test('14-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.answer, isNot(4));
    });

    test('15-Verifica se a resposta errada foi selecionada', () {
      final question = questionController.questions[0];
      expect(question.answer, isNot(5));
    });

    tearDown(() {
      questionController.dispose();
    });
  });
}
