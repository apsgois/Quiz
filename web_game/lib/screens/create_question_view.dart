import 'package:flutter/material.dart';

class CreateQuestionView extends StatelessWidget {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _option1Controller = TextEditingController();
  final TextEditingController _option2Controller = TextEditingController();
  final TextEditingController _option3Controller = TextEditingController();
  final TextEditingController _option4Controller = TextEditingController();
  int _correctAnswerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Perguntas e Respostas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _questionController,
              decoration: InputDecoration(labelText: 'Pergunta'),
            ),
            TextField(
              controller: _option1Controller,
              decoration: InputDecoration(labelText: 'Opção 1'),
            ),
            TextField(
              controller: _option2Controller,
              decoration: InputDecoration(labelText: 'Opção 2'),
            ),
            TextField(
              controller: _option3Controller,
              decoration: InputDecoration(labelText: 'Opção 3'),
            ),
            TextField(
              controller: _option4Controller,
              decoration: InputDecoration(labelText: 'Opção 4'),
            ),
            SizedBox(height: 16.0),
            Text('Selecione a resposta correta:'),
            RadioListTile<int>(
              title: Text('Opção 1'),
              value: 0,
              groupValue: _correctAnswerIndex,
              onChanged: (value) {
                _correctAnswerIndex = value!;
              },
            ),
            RadioListTile<int>(
              title: Text('Opção 2'),
              value: 1,
              groupValue: _correctAnswerIndex,
              onChanged: (value) {
                _correctAnswerIndex = value!;
              },
            ),
            RadioListTile<int>(
              title: Text('Opção 3'),
              value: 2,
              groupValue: _correctAnswerIndex,
              onChanged: (value) {
                _correctAnswerIndex = value!;
              },
            ),
            RadioListTile<int>(
              title: Text('Opção 4'),
              value: 3,
              groupValue: _correctAnswerIndex,
              onChanged: (value) {
                _correctAnswerIndex = value!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para criar a pergunta com as respostas
              },
              child: Text('Criar Pergunta'),
            ),
          ],
        ),
      ),
    );
  }
}
