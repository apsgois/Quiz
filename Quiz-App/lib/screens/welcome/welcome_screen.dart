import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // WebsafeSvg.asset("assets/icons/bg.svg"),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 2),
              Text(
                "Vamos jogar!",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("Entre com seu nome para continuar"),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 245, 246, 248),
                  hintText: "Nome",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Get.to(QuizScreen()),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Vamos começar!",
                    style: Theme.of(context).textTheme.button?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ))
      ],
    ));
  }
}
