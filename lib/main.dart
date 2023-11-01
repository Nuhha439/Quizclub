import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/provider.dart';
import 'package:flutter_application_2/splashog.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        theme: ThemeData(primaryColor: Color.fromARGB(255, 45, 18, 81)),
        home: splash());
  }
}
