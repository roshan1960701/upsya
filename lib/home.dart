import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Widget _offsetPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: MaterialButton(
                    child: Text(
                      "Logout",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/login', (Route<dynamic> route) => false);
                    })),
          ],
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
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
          actions: <Widget>[
            _offsetPopup(),
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue[50], Colors.yellow[100]])),
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                  focusColor: Colors.black,
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {})
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Hey ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Admin!",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Do you want to tell how's your mood right now",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        "asset/smile.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(
                                        "Happy",
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        "asset/sad.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(
                                        "Sad",
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        "asset/scared.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(
                                        "Scared",
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        "asset/angry.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(
                                        "Angry",
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                  focusColor: Colors.black,
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {})
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Got It !",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Received your story and would need some \ntime to respond. Kepp checking.\n Until then feel free to write more.",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                                child: Text(
                                  "You must be feeling something",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0),
                                child: Text(
                                  "What do you have to say?",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Whaterver happens here. stays here. Your stories are absolutely safe",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide:
                                      BorderSide(color: Color(0x73000000)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide:
                                      BorderSide(color: Color(0xFF00BCD4)),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MaterialButton(
                                  height: 40.0,
                                  minWidth: 120,
                                  highlightColor: Colors.cyan[200],
                                  splashColor: Colors.cyan[200],
                                  shape: Border.all(
                                      color: Colors.cyan, width: 1.0),
                                  child: Text(
                                    "Reply Me",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  onPressed: () {}),
                              MaterialButton(
                                  height: 40.0,
                                  minWidth: 120,
                                  highlightColor: Colors.yellow[300],
                                  splashColor: Colors.yellow[300],
                                  shape: Border.all(
                                      color: Colors.yellowAccent[700],
                                      width: 1.0),
                                  child: Text(
                                    "Just Save It",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  onPressed: () {})
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white),
                      child: Column(
                        children: <Widget>[],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
