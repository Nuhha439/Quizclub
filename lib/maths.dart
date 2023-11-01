import 'package:flutter/material.dart';
import 'package:flutter_application_2/Result.dart';
import 'package:flutter_application_2/mathsqs.dart';

class Maths extends StatefulWidget {
  const Maths({super.key});

  @override
  State<Maths> createState() => _MathsState();
}

class _MathsState extends State<Maths> {
  List<QuestionO> questionList = getmathQuestion();
  int currentQuestionIndex = 0;
  AnswersS? selectedAnswer;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, left: 25),
              child: Text(
                " ${currentQuestionIndex + 1}. ",
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width:10),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(),
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(),
              child: SizedBox(width: 310,
                child: Text(
                  questionList[currentQuestionIndex].questionText,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _answerList() {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: questionList[currentQuestionIndex]
              .answersList
              .map(
                (b) => _answerButton(b),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _answerButton(AnswersS answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 65,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
        ),
        style: ElevatedButton.styleFrom(
            shape: LinearBorder(),
            backgroundColor: isSelected
                ? Color.fromARGB(255, 0, 0, 0)
                : Color.fromARGB(255, 0, 0, 0),
            foregroundColor: isSelected
                ? Color.fromARGB(246, 0, 0, 0)
                : Color.fromARGB(255, 255, 255, 255)),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
      ),
    );
  }
  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      margin: const EdgeInsets.only(left: 10, top: 20),
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromARGB(206, 0, 0, 0),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            if (isLastQuestion) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    score: score,
                  ),
                ),
              );
            } else {
              setState((){
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          },
          // Check if an answer is already selected

          child: Text(
            isLastQuestion ? "submit" : "next",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
        ),
      ),
    );
  }
}