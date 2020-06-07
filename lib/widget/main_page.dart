import 'package:citkmutnb/page/history.dart';
import 'package:citkmutnb/page/myboss.dart';
import 'package:citkmutnb/page/mycontent.dart';
import 'package:citkmutnb/page/person.dart';
import 'package:citkmutnb/utility/my_style.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Mystyle().myBG(),
        Column(
          children: <Widget>[
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item1', History()),
                createItem('item2', Myboss()),
                createItem('item3', Mycontent())
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item4', History()),
                createItem('item5', History()),
                createItem('item6', History())
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                createItem('item7', History()),
              ],
            )
          ],
        ),
      ],
    );
  }

  SizedBox mySizebox() {
    return SizedBox(
      height: 24.0,
    );
  }


  //เมธอดที่ทำหน้าที่ ย้ายการทำงานไปหน้า ที่เราคลิกไอเทม
  Widget createItem(String nameImage, Widget widget) => GestureDetector(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(builder: (context) => widget,);
          Navigator.push(context, route);
        },
        child: Image.asset('images/$nameImage.png'),
      );
}
