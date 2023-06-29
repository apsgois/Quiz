import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import '../../constants.dart';
import '../../models/Questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(children: [
        Text(
          question.question,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: kBlackColor),
        ),
        SizedBox(height: kDefaultPadding / 2),
        ...List.generate(
          question.options.length,
          (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index)),
        ),
      ]),
    );
  }
}
