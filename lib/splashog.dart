import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/provider.dart';
import 'package:provider/provider.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
   final savelogin = Provider.of<Savelogin>(context, listen: false);
  savelogin.getlogin();

    Timer(Duration(seconds: 2), () {
      if (usernameList.isEmpty && passwordList.isEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => loginscreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    score: 0,
                  )),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'asset/images/logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
