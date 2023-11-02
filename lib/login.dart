import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginscreen.dart';


class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 100,top: 190,right: 100),
              child: Image(image: AssetImage('asset/images/logo.png'),
               height: 160,
               width: 160,
              ),
            ),
            Container(margin: EdgeInsets.only(left: 80,top: 10,right: 60),
              child: Text('Quiz club',
              style: TextStyle(fontSize: 35,
              fontWeight: FontWeight.w500,
              color: Colors.black),),
              ),
             
          GestureDetector(onTap: (){
           Navigator.push(
           context,
          MaterialPageRoute(
          builder: (context) => loginpage(),
           ),
           );
          },
            child: Container(
                margin: EdgeInsets.fromLTRB(70, 40,25,0),
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                ),
                padding: EdgeInsets.only(left: 100,top: 10),
                child: Text('Login',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w400),),
                ),
              ),
           Container(margin: EdgeInsets.fromLTRB(70, 10,25,100),
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                  ),padding: EdgeInsets.only(left: 100,top: 10),
                  child: Text('sign up',
                  style: TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),),
                  ),
               ]),
      ),
    );
  }
}