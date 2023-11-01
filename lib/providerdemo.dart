import 'package:flutter/material.dart';

class providerdemo extends StatefulWidget {
  const providerdemo({super.key});

  @override
  State<providerdemo> createState() => _providerdemoState();
}

class _providerdemoState extends State<providerdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [Container(
          height: 100,
          width: 100,
          color: Colors.pink,
        ),
        Container(
           height: 100,
          width: 100,
          color: Color.fromARGB(255, 110, 183, 223),
        ),
         Container(
           height: 100,
          width: 100,
          color: Color.fromARGB(255, 198, 138, 89),
        )],
      )
      
    );
  }
}