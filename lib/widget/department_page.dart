import 'package:citkmutnb/widget/pak1.dart';
import 'package:flutter/material.dart';

class Departmentpage extends StatefulWidget {
  @override
  _DepartmentpageState createState() => _DepartmentpageState();
}

class _DepartmentpageState extends State<Departmentpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak1')),
            createimg(('Pak2')),   
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak3')),
            createimg(('Pak4')),
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak5')),
            createimg(('Pak6')),
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak7')),
            createimg(('Pak8')),
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak9')),
            createimg(('Pak10')),
          ],
        ),
      ],
    );
  }

  Widget createimg(String nameimg) {
    return Container(
      width: 300.0,
      height: 200.0,
      child: Image.asset('images/$nameimg.png'),
    );
  }
}
