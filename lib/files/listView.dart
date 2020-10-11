import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  @override
  _listViewState createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.yellow])),
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 10.0,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
