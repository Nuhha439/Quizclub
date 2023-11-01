class QuestionS {
  final String questionText;
  final List<Answer> answersList;

  QuestionS(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<QuestionS> getQuestion() {
  List<QuestionS> list = [];
  //add questions here
  list.add(QuestionS('What is the largest organ in the human body?', [
    Answer("Tongue", false), 
    Answer("Skin", true),
    Answer("Legs", false),
    Answer("Eye", false),
  ]));
  list.add(QuestionS(' Which gas makes up the majority of Earth atmosphere?', [
    Answer("Nitrogen", true),
    Answer("Hydrogen", false),
    Answer("Oxygen", false),
    Answer("Carbon dioxide", false),
  ]));
  list.add(QuestionS(' What is the powerhouse of the cell?', [
    Answer("Nucleus", false),
    Answer("Mitochondria", true),
    Answer("Ribosome", false),
    Answer("Nueron", false),
  ]));
  list.add(QuestionS('What is the chemical symbol for gold?', [
    Answer("Gu", false),
    Answer("Go", false),
    Answer("Au", true),
    Answer("Ag", false),
  ]));
  list.add(QuestionS('Which element is essential for human life and is found in proteins?', [
    Answer("Iron", false),
    Answer("Nitrogen", true),
    Answer("Calcium", false),
    Answer("carbon", false),
  ]));
  return list;
}