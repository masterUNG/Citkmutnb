import 'package:flutter/material.dart';

class Departmentpage extends StatefulWidget {
  @override
  _DepartmentpageState createState() => _DepartmentpageState();
}

class _DepartmentpageState extends State<Departmentpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            createimg('Pak1'),
            createimg('Pak3'),
            createimg('Pak5'),
            createimg('Pak7'),
            createimg('Pak9'),
          ],
        ),
        Row(
          children: <Widget>[
            createimg('Pak2'),
            createimg('Pak4'),
            createimg('Pak6'),
            createimg('Pak8'),
            createimg('Pak10'),
          ],
        ),
      ],
    );
  }

  Widget createimg(
    String nameimg,
  ) {
    return Container(
      width: 300.0,
      height: 200.0,
      child: Image.asset('images/$nameimg.png'),
    );
  }
}
