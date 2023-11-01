// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Savelogin extends ChangeNotifier {
  

 

//   addLogin(String name, String password) {
//     usernameList.add(name);
//     passwordList.add(password);
//     Saveuserlogin();
//   }

//   Future<void> getlogin() async {
//     final pref = await SharedPreferences.getInstance();
//     usernameList = pref.getStringList('saveuserlogin') ?? [];
//     passwordList = pref.getStringList('Saveuserlogin') ?? [];
//     print(usernameList);
//     print(passwordList);
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Savescore extends ChangeNotifier {
// //   List<int> marks = [];
//   int score = 0;

//   Future<void> saveQuizResult() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? userScoresString = prefs.getString('user_scores');
//     prefs.setInt('mark', score);

//     if (userScoresString != null) {
//       marks =
//           userScoresString.split(',').map((s) => int.tryParse(s) ?? 0).toList();
//     }
//     marks.add(score);

//     prefs.setString('user_scores', marks.join(','));
//     print(marks);
//   }

//   Future<void> getUserScores() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? userScoresString = prefs.getString('user_scores');
//     if (userScoresString != null) {
//       marks =
//           userScoresString.split(',').map((s) => int.tryParse(s) ?? 0).toList();
//     }
//   }

//   Savescore() {
//     getUserScores();
//     notifyListeners();
//   }

//   void clearScore() {
//     score = 0;
//     notifyListeners();
//   }
// }
