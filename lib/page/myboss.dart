import 'package:flutter/material.dart';

class Myboss extends StatefulWidget {
  @override
  _MybossState createState() => _MybossState();
}

class _MybossState extends State<Myboss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คณะผู้บริหาร'),),
    );
  }
}