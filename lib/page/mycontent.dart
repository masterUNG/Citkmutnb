import 'package:flutter/material.dart';

class Mycontent extends StatefulWidget {
  @override
  _MycontentState createState() => _MycontentState();
}

class _MycontentState extends State<Mycontent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หลักสูตร'),
      ),
      body: Column(
        children: <Widget>[
          buttonTop(),
        ],
      ),
    );
  }

  Widget buttonTop() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 250.0,
          child: RaisedButton(
            onPressed: () {},
            child: Text('ปริญญาตรี'),
          ),
        ),
      ],
    );
  }
}
