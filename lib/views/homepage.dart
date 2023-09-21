import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/model/questions_model.dart';
import 'package:quiz_app/view_model/quiz_viewmodel.dart';
import 'package:quiz_app/views/custom_widget/custom_text_field.dart';
import 'package:quiz_app/views/quiz_page.dart';

class HomePage extends StatefulHookWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var name = useTextEditingController();
    var viewModel = context.watch<QuizViewModel>();
    // Get a list of 4 randomly selected Questions objects
    Map<dynamic, dynamic> randomQuestionsMap =
        getRandomQuestionsAndOptions(stateQuestionsList, 4);

    List<dynamic> randomQuestions = randomQuestionsMap.keys.toList();
    dynamic randomOptions = randomQuestionsMap.values.toList();
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's get to know you...",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 36.0,
            ),
            CustomInputfield(
              controller: name,
              fieldName: "Username",
              maxLines: 1,
              inputType: TextInputType.number,
              expenseField: true,
            ),
            MaterialButton(
                color: ColorScheme.fromSwatch(primarySwatch: Colors.green)
                    .background,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                elevation: 2,
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  viewModel.userName = name.text;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(
                          questionlenght: randomQuestions,
                          optionsList: randomOptions,
                          topicType: "General Quiz",
                        ),
                      ));
                })
          ],
        ),
      ),
    );
  }
}

Map<dynamic, dynamic> getRandomQuestionsAndOptions(
  List<dynamic> allQuestions,
  int count,
) {
  final randomQuestions = <dynamic>[];
  final randomOptions = <dynamic>[];
  final random = Random();

  if (count >= allQuestions.length) {
    count = allQuestions.length;
  }

  while (randomQuestions.length < count) {
    final randomIndex = random.nextInt(allQuestions.length);
    final selectedQuestion = allQuestions[randomIndex];

    if (!randomQuestions.contains(selectedQuestion)) {
      randomQuestions.add(selectedQuestion);
      randomOptions.add(selectedQuestion.options);
    }
  }

  return Map.fromIterables(randomQuestions, randomOptions);
}
