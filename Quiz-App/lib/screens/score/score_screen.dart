import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // WebsafeSvg.asset(
          //  "assets/icons/bg.svg",
          // fit: BoxFit.fill,
          //),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.white),
              ),
              Text(
                "${_controller.numOfCorrectAns * 10}/${_controller.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white),
              ),
              Spacer(),
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  // width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Voltar as perguntas",
                    style: Theme.of(context).textTheme.button?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
