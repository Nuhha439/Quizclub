import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomeScreen.dart';
import 'package:flutter_application_2/provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => loginState();
}

final namecontroller = TextEditingController();
final passwordcontroller = TextEditingController();
String name = 'nuha';
String password = '123';

List<String> usernameList = [];
List<String> passwordList = [];

class loginState extends State<loginpage> {
  @override
  void initState() {
    super.initState();
    getlogin();
  }

  @override
  Widget build(BuildContext context) {
    Saveuserlogin();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 100, top: 190, right: 100),
                child: Text(
                  'Welcome.',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 80, top: 10, right: 60),
                child: Text(
                  'Glad to see you!',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 80, top: 30, right: 60),
                height: 50,
                width: 450,
                child: TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    hintText: "User Id",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(215, 133, 125, 125),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(210, 249, 249, 249),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 80, top: 30, right: 60),
                height: 50,
                width: 450,
                child: TextFormField(
                  obscureText: true,
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(215, 133, 125, 125),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility,
                        color: Color.fromARGB(215, 129, 125, 125),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(210, 249, 249, 249),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 120),
              child: Text(
                'Forget password?',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 151, 158, 161)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (namecontroller.text == name &&
                    passwordcontroller.text == password) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(score: 0),
                    ),
                  );
                  addLogin(namecontroller.text, passwordcontroller.text);
                }
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(60, 55, 25, 35),
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.only(left: 100, top: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  remove() {
  usernameList.removeAt(0);
  passwordList.removeAt(0);
  Saveuserlogin();
}

}

Future<void> Saveuserlogin() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setStringList('name', usernameList);
  prefs.setStringList('password', passwordList);
  print(usernameList);
  print(passwordList);
}

addLogin(String name, String password) {
  usernameList.add(name);
  passwordList.add(password);
  Saveuserlogin();
}

Future<void> getlogin() async {
  final pref = await SharedPreferences.getInstance();
  usernameList = pref.getStringList('name') ?? [];
  passwordList = pref.getStringList('password') ?? [];
  print(usernameList);
  print(passwordList);
}

