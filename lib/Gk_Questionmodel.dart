class Question {
  final String questionText;
  final List<Answers> answersList;

  Question(this.questionText, this.answersList);
}

class Answers {
  final String answerText;
  final bool isCorrect;

  Answers(this.answerText, this.isCorrect);
}

List<Question> getGkQuestion() {
  List<Question> list = [];
  //add questions here
  list.add(Question(' What is the largest desert in the world?', [
    Answers("Gobi desert", false), 
    Answers("Sahara desert", true),
    Answers("Atacama desert", false),
    Answers("missisippie", false),
  ]));
  list.add(Question('Who is known as the "Father of the Indian Constitution"?', [
    Answers("Mahathma Gandhi", true),
    Answers("B.R  Ambedhkar", false),
    Answers("Jawaharlal nehru", false),
    Answers("indira gandhi", false),
  ]));
  list.add(Question(' What is the capital of France?', [
    Answers("England", false),
    Answers("Paris", true),
    Answers("Rome", false),
    Answers("Berlin", false),
  ]));
  list.add(Question('Which planet is known as the "Red Planet"?', [
    Answers("Mercury", false),
    Answers("Saturn", false),
    Answers("Mars", true),
    Answers("Jupitor", false),
  ]));
  list.add(Question('Who painted the Mona Lisa?', [
    Answers("Pablo Picasso", false),
    Answers("Leonardo da Vinci", true),
    Answers("Vincent van Gogh", false),
    Answers("Lissie", false),
  ]));
  return list;
}