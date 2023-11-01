class question {
  final String questionText;
  final List<answer> answersList;

  question(this.questionText, this.answersList);
}

class answer {
  final String answerText;
  final bool isCorrect;

  answer(this.answerText, this.isCorrect);
}

List<question> getquestion() {
  List<question> list = [];
  //add questions here
  list.add(question(' Which sport is known as the "King of Sports"?', [
    answer("Soccer", false), 
    answer("Cricket", true),
    answer("Hockey", false),
    answer("Basket Ball", false),
  ]));
  list.add(question(' Which country won the FIFA World Cup in 2014?', [
    answer("Germany", true),
    answer("Argentina", false),
    answer("Brazil", false),
    answer("France", false),
  ]));
  list.add(question(' Which country is famous for its passion for cricket? ', [
    answer("Pakistan", false),
    answer("India", true),
    answer("England", false),
    answer("Australia", false),
  ]));
  list.add(question('What is the maximum number of players a soccer team can\n have on the field during\n a match?', [
    answer("9", false),
    answer("10", false),
    answer("11", true),
    answer("12", false),
  ]));
  list.add(question(' Which sport uses a net, a shuttlecock, and rackets?', [
    answer("Tennis", false),
    answer("Badminton", true),
    answer("cricket", false),
    answer("soccer", false),
  ]));
  return list;
}