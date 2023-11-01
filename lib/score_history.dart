import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/profile.dart';
import 'package:flutter_application_2/provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class score extends StatefulWidget {
  // new property to hold the score

  score({
    super.key,
  }); //constructor with score parameter

  @override
  State<score> createState() => _scoreState();
}

class _scoreState extends State<score> {
  int score = 0;
  List<int> marks = [];
  @override
  void initState() {
    super.initState();
    getUserScores();
  }

  Future<void> getUserScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userScoresString = prefs.getString('user_scores');

    if (userScoresString != null) {
      setState(() {
        marks = userScoresString
            .split(',')
            .map((s) => int.tryParse(s) ?? 0)
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Provider.of<Savescore>(context).getUserScores();

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Text(
            'Leader Board',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1)),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    score: 0,
                  ),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(
                      score: 0,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.person),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
        body: 
          ListView.builder(
              itemCount: marks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    " Score  ${marks[index]}",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                );
              }));
        }
  }

