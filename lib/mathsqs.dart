class QuestionO {
  final String questionText;
  final List<AnswersS> answersList;

  QuestionO(this.questionText, this.answersList);
}

class AnswersS {
  final String answerText;
  final bool isCorrect;

  AnswersS(this.answerText, this.isCorrect);
}

List<QuestionO> getmathQuestion() {
  List<QuestionO> list = [];
  //add questions here
  list.add(QuestionO(' What is the next number in the pattern: 2, 4, 6, 8, ...?', [
    AnswersS("10", false), 
    AnswersS("12", true),
    AnswersS("9", false),
    AnswersS("14", false),
  ]));
  list.add(QuestionO(' If a triangle has sides of length 5 cm, 12 cm, and 13 cm, what type of triangle is it?"?', [
    AnswersS("Right angled", true),
    AnswersS("Equilateral", false),
    AnswersS("Isosceles", false),
    AnswersS("Scalane", false),
  ]));
  list.add(QuestionO(' If a box contains 24 chocolates and you take away 15, how many chocolates are left?', [
    AnswersS("10", false),
    AnswersS("9", true),
    AnswersS("15", false),
    AnswersS("19", false),
  ]));
  list.add(QuestionO(' What is the result of 7×4−3 ?', [
    AnswersS("19", false),
    AnswersS("25", false),
    AnswersS("24", true),
    AnswersS("29", false),
  ]));
  list.add(QuestionO(' If a box contains 24 chocolates and you take away 15, how many chocolates are left?', [
    AnswersS("10", false),
    AnswersS("9", true),
    AnswersS("15", false),
    AnswersS("12", false),
  ]));
  return list;
}