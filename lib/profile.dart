import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/loginscreen.dart';

import 'package:flutter_application_2/score_history.dart';

// ignore: must_be_immutable
class profile extends StatefulWidget {
  int score;
  profile({super.key, required this.score});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
   loginState login = loginState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(children: [
          Row(children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      score: 0,
                                    )),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  )
                ],
              ),
            ),
          ]),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(140, 20, 45, 0),
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage('asset/images/profile.png'),
                        fit: BoxFit.fill),
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(75, 25, 55, 20),
                child: Text(
                  'Leonardo dicaprio',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
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
                child: Container(
                  margin: EdgeInsets.fromLTRB(47, 25, 10, 20),
                  height: 68,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100, 10, 10, 20),
                    child: Text(
                      "Quizes",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => score()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(47, 25, 10, 20),
                    height: 68,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(100, 10, 10, 25),
                      child: Text(
                        "Results",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(57, 25, 10, 20),
                height: 68,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(100, 10, 10, 25),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => loginpage()),
                        (Route<dynamic> Route) => false);
                  login.remove();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(57, 25, 10, 20),
                    height: 68,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(65, 10, 10, 20),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ))
            ],
          )
        ]));
  }
}
