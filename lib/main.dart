import 'package:flutter/material.dart';
import 'package:upsya/Splashscreen.dart';
import 'package:upsya/files/listView.dart';
import 'package:upsya/home.dart';
import 'package:upsya/loginPage.dart';
import 'package:upsya/onboarding.dart';
import 'package:upsya/register.dart';
import 'package:upsya/resetPass.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => loginPage(),
        '/register': (context) => register(),
        '/forgotPass': (context) => resetPass(),
        '/home': (context) => home(),
      },
      title: "Upsya",
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white70, Colors.yellow[200]])),
          child: Center(
            child: Image.asset(
              "asset/upsyaLogo.png",
            ),
          ),
        ),
      ),
    );
  }
}
