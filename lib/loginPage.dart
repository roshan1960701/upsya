import 'package:flutter/material.dart';
import 'package:upsya/home.dart';
import 'package:upsya/main.dart';
import 'package:upsya/register.dart';
import 'package:upsya/resetPass.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    Widget _offsetPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: MaterialButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {})),
            PopupMenuItem(
                value: 2,
                child: MaterialButton(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/register', (Route<dynamic> route) => false);
                    })),
          ],
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        );
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 5.0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "asset/logo2.png",
                width: 180.0,
                height: 40.0,
              )
            ],
          ),
          actions: <Widget>[_offsetPopup()],
          // actions: <Widget>[
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: <Widget>[
          //       Image.asset("asset/upsyaLogo.png"),
          //     ],
          //   ),
          //   IconButton(
          //       icon: Icon(
          //         Icons.menu,
          //         color: Colors.black,
          //       ),
          //       onPressed: () {}),
          // ],
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue[50], Colors.yellow[100]])),
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue[50], Colors.yellow[100]])),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.90,
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 30.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 30.0, color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 30.0,
                                        right: 30.0,
                                      ),
                                      child: Container(
                                        height: 40.0,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(10),
                                            hintText: "E-Mail Address",
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0)),
                                              borderSide: BorderSide(
                                                  color: Color(0x73000000)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0)),
                                              borderSide: BorderSide(
                                                  color: Color(0xFF00BCD4)),
                                            ),
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0,
                                          left: 30.0,
                                          right: 30.0,
                                          bottom: 10.0),
                                      child: Container(
                                        height: 40.0,
                                        child: TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(10),
                                            hintText: "Password",
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0)),
                                              borderSide: BorderSide(
                                                  color: Color(0x73000000)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5.0)),
                                              borderSide: BorderSide(
                                                  color: Color(0xFF00BCD4)),
                                            ),
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.0,
                                        right: 30.0,
                                        top: 10,
                                        bottom: 10.0),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                '/home',
                                                (Route<dynamic> route) =>
                                                    false);
                                      },
                                      height: 50.0,
                                      minWidth: 300,
                                      splashColor: Colors.white,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 5,
                                          bottom: 10.0),
                                      child: InkWell(
                                        child: Text(
                                          "Forgot your Password?",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15.0),
                                        ),
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  '/forgotPass',
                                                  (Route<dynamic> route) =>
                                                      false);
                                        },
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(top: 30.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Don't have account yet?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                          InkWell(
                                            child: Text(
                                              "Register",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.blue),
                                            ),
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              register()));
                                            },
                                          ),
                                        ],
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(top: 30.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0, right: 10.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 2.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            "OR",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.0, right: 10.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 2.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 30.0,
                                      right: 30.0,
                                      top: 30,
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      minWidth: 300.0,
                                      height: 50.0,
                                      splashColor: Colors.white,
                                      child: Text(
                                        "Sign in with Google",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                      color: Colors.red,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.0,
                                        right: 30.0,
                                        top: 10,
                                        bottom: 20.0),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      minWidth: 300.0,
                                      height: 50.0,
                                      splashColor: Colors.white,
                                      child: Text(
                                        "Sign in with Facebook",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
