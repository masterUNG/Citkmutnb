

import 'package:flutter/cupertino.dart';

class ClassRoomPak1 extends StatefulWidget {
  final String category;
  ClassRoomPak1({Key key, this.category}) : super(key: key);
  @override
  _ClassRoomPak1State createState() => _ClassRoomPak1State();
}

class _ClassRoomPak1State extends State<ClassRoomPak1> {
  String category;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    category = widget.category;
  }

  @override
  Widget build(BuildContext context) {
    return Text(category);
  }
}
