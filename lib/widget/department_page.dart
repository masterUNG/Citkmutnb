import 'package:citkmutnb/page/pak1.dart';
//import 'package:citkmutnb/widget/pak1.dart';
import 'package:flutter/material.dart';

class Departmentpage extends StatefulWidget {
  @override
  _DepartmentpageState createState() => _DepartmentpageState();
}

class _DepartmentpageState extends State<Departmentpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak1'), Pak1()),
            createimg(('Pak2'), Pak1()),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak3'), Pak1()),
            createimg(('Pak4'), Pak1()),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak5'), Pak1()),
            createimg(('Pak6'), Pak1()),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak7'), Pak1()),
            createimg(('Pak8'), Pak1()),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak9'), Pak1()),
            createimg(('Pak10'), Pak1()),
          ],
        ),
      ],
    );
  }

  Widget createimg(String nameimg, Widget widget) => GestureDetector(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => widget,
          );
          Navigator.push(context, route);
        },
        child: Container(
          child: Image.asset('images/$nameimg.png'),
          width: 300,
          height: 200,
        ),
      );
  // {FlatButton(onPressed: null, child: null)
  //   return Container(
  //     width: 300.0,
  //     height: 200.0,
  //     child: Image.asset('images/$nameimg.png'),
  //   );
  // }
}
