import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/score_history.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Result extends StatefulWidget {
  int score;

  Result({Key? key, required this.score}) : super(key: key);

  @override
  State<Result> createState() => ResultState();
}

// List<int> marks = [];
// List<String> storedTimes = [];

class ResultState extends State<Result> {
  Future<void> saveQuizResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userScoresString = prefs.getString('user_scores');
    prefs.setInt('mark', widget.score);

    List<int> marks = [];
    if (userScoresString != null) {
      marks =
          userScoresString.split(',').map((s) => int.tryParse(s) ?? 0).toList();
    }
    marks.add(widget.score);

    prefs.setString('user_scores', marks.join(','));
  }

  Future<void> SaveTimeandDate() async {
    final now = DateTime.now();
    final prefs = await SharedPreferences.getInstance();
    final storedTimes = prefs.getStringList('storedTimes') ?? [];
    storedTimes.add(now.toString());

    prefs.setStringList('storedTimes', storedTimes);
    print(storedTimes);
  }

  @override
  Widget build(BuildContext context) {
    // Provider.of<Savescore>(context).saveQuizResult();
    saveQuizResult();

    SaveTimeandDate();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(255, 254, 254, 255),
          ),
          Positioned(
              child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 5, 0),
            height: 365,
            width: 369,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(250, 202, 202, 205),
                  Color.fromARGB(233, 185, 183, 183)
                ]),
                borderRadius: BorderRadius.circular(35)),
          )),
          Positioned(
              right: 40,
              bottom: 350,
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(25),
                ),
              )),
          Positioned(
            top: 40,
            left: 95,
            child: Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: widget.score <= 2
                  ? Image.asset('asset/images/lose.png')
                  : Image.asset('asset/images/win.png'),
            ),
          ),
          Positioned(
            top: 360,
            left: 85,
            child: Text(
              'Score \n ${widget.score}',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          Positioned(
            top: 360,
            left: 200,
            child: Text(
              'Library',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          Positioned(
              bottom: 155,
              right: 45,
              child: Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => score()),
                      );
                    },
                    child: Text(
                      "Score card",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
              )),
          Positioned(
              bottom: 100,
              right: 45,
              child: Container(
                margin: EdgeInsets.only(left: 80),
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            score: 0,
                          ),
                        ),
                      );
                      // Provider.of<Savescore>(context,listen: false).clearScore();
                    },
                    child: Text(
                      "Back to home",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 254, 254, 255)),
                    )),
              )),
        ]));
  }
}
