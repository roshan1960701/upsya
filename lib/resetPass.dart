import 'package:flutter/material.dart';
import 'package:upsya/loginPage.dart';
import 'package:upsya/register.dart';

class resetPass extends StatefulWidget {
  @override
  _resetPassState createState() => _resetPassState();
}

class _resetPassState extends State<resetPass> {
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
    return WillPopScope(
      onWillPop: () async => false,
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
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
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
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue[50], Colors.yellow[100]])),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        children: <Widget>[
                          Column(children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 40.0),
                              child: Center(
                                child: Container(
                                  width: 300,
                                  height: 300,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 30.0),
                                        child: Text(
                                          "Reset Password",
                                          style: TextStyle(
                                              fontSize: 30.0,
                                              color: Colors.black),
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
                                                contentPadding:
                                                    EdgeInsets.all(10),
                                                hintText: "E-Mail Address",
                                                border: InputBorder.none,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5.0)),
                                                  borderSide: BorderSide(
                                                      color: Color(0x73000000)),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                            left: 30.0,
                                            right: 30.0,
                                            top: 30,
                                            bottom: 10.0),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          height: 50.0,
                                          minWidth: 300,
                                          splashColor: Colors.white,
                                          child: Text(
                                            "Reset Password",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0),
                                          ),
                                          color: Colors.cyan,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
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
