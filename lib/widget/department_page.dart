import 'package:citkmutnb/page/pak1.dart';
import 'package:citkmutnb/utility/my_style.dart';
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
            createimg(('Pak1'), Pak1(nameImage: 'Pak1', title: 'เครื่องกล',)),
            createimg(('Pak2'), Pak1(nameImage: 'Pak2', title: 'เครื่องกล2',)),
          ],
        ),Mystyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak3'), Pak1(nameImage: 'Pak3', title: 'เครื่องกล222',)),
            createimg(('Pak4'), Pak1(nameImage: 'Pak4', title: 'เครื่องกล5',)),
          ],
        ),Mystyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak5'), Pak1(nameImage: 'Pak5', title: 'เครื่องกล4',)),
            createimg(('Pak6'), Pak1(nameImage: 'Pak6', title: 'เครื่องกล6',)),
          ],
        ),Mystyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak7'), Pak1(nameImage: 'Pak7', title: 'เครื่องกล7',)),
            createimg(('Pak8'), Pak1(nameImage: 'Pak8', title: 'เครื่องกล75',)),
          ],
        ),Mystyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak9'), Pak1(nameImage: 'Pak9', title: 'เครื่องกล354',)),
            createimg(('Pak10'), Pak1(nameImage: 'Pak10', title: 'เครื่องกล412',)),
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
