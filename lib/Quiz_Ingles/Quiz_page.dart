import 'package:flutter/material.dart';

import 'question.dart';
import 'quiz.dart';

import 'answer_button.dart';
import 'question_text.dart';
import 'correct_worng_overlay.dart';

import 'score_page.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("A palavra TREE é o mesmo que: Três.", false),
    new Question("A palavra (Dangerous) NÃO é um adjetivo.", false),
    new Question("O antônimo de (HAPPY) é Sad", true),
    new Question("A palavra (Push) significa Empurrar", true),
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldBeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      overlayShouldBeVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)), // True Button
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => handleAnswer(false)), // False Button
          ],
        ),
        overlayShouldBeVisible
            ? new CorrectWorngOverlay(isCorrect, () {
          if (quiz.length == questionNumber) {
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new ScorePage(quiz.score, quiz.length)),
                    (Route route) => route == null);
            return;
          }
          currentQuestion = quiz.nextQuestion;
          this.setState(() {
            overlayShouldBeVisible = false;
            questionText = currentQuestion.question;
            questionNumber = quiz.questionNumber;
          });
        })
            : new Container()
      ],
    );
  }
}
