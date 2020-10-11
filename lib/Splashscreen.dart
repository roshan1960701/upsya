import 'dart:async';
import 'package:flutter/material.dart';
import 'package:upsya/loginPage.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void completed() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => loginPage()));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), completed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.white
              // gradient: LinearGradient(
              //     begin: Alignment.centerLeft,
              //     end: Alignment.centerRight,
              //     colors: [Colors.white, Colors.yellow[200]])
              ),
          child: Center(
              child: Card(
            child: Image.asset(
              "asset/logo1.png",
              width: 250,
              height: 250,
            ),
            elevation: 20.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
          ))),
    );
  }
}
