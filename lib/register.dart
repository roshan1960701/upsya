import 'package:flutter/material.dart';
import 'package:upsya/loginPage.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
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
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/login', (Route<dynamic> route) => false);
                    })),
            PopupMenuItem(
                value: 2,
                child: MaterialButton(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {})),
          ],
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        );
    return Scaffold(
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
                  colors: [Colors.blue[50], Colors.yellow[50]])),
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
                            colors: [Colors.blue[50], Colors.yellow[50]])),
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
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.black),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.0,
                                        right: 30.0,
                                        top: 20,
                                        bottom: 10.0),
                                    child: Container(
                                      height: 40.0,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: "Name",
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
                                          hintText: "Confirm Password",
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
                                      top: 20,
                                      bottom: 10.0),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 50.0,
                                    minWidth: 300,
                                    splashColor: Colors.white,
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
                                    ),
                                    color: Colors.cyan,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 1.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "By Registering you agree to",
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.black),
                                        ),
                                        InkWell(
                                          child: Text(
                                            "Terms & Condition",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.blue),
                                          ),
                                          onTap: () {},
                                        ),
                                        Text(
                                          " and ",
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.black),
                                        ),
                                        InkWell(
                                          child: Text(
                                            "Privacy Policy",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.blue),
                                          ),
                                          onTap: () {},
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
                                      "Register using Google",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
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
                                      "Resister using Facebook",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.0),
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
    );
  }
}
