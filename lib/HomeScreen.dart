import 'package:flutter/material.dart';
import 'package:flutter_application_2/General.dart';
import 'package:flutter_application_2/Quiz.dart';
import 'package:flutter_application_2/maths.dart';

import 'package:flutter_application_2/sport.dart';


// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  int score;
  HomeScreen({super.key, required this.score});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Hey!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Nuhha',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              hintText: "Search ....",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(215, 133, 125, 125)),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color.fromARGB(215, 133, 125, 125),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.tune,
                                  color: Color.fromARGB(215, 129, 125, 125),
                                ),
                              ),
                            ),
                          ),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(224, 14, 14, 14),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 113, 112, 112)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Science(),
                          ),
                        );
                        // Provider.of<Savescore>(context, listen: false)
                        //     .clearScore();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          'SCIENCE',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 10,
                            shadows: const <Shadow>[
                              Shadow(
                                  color: Color.fromARGB(223, 240, 234, 234),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Maths(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          'MATHS',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 5,
                            shadows: const <Shadow>[
                              Shadow(
                                  color: Color.fromARGB(223, 240, 234, 234),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sport(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          'SPORTS',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 5,
                            shadows: const <Shadow>[
                              Shadow(
                                  color: Color.fromARGB(223, 240, 234, 234),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Gk(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          'GENERAL',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 5,
                            shadows: const <Shadow>[
                              Shadow(
                                  color: Color.fromARGB(223, 240, 234, 234),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
