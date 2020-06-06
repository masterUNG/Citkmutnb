import 'package:citkmutnb/widget/calendar_page.dart';
import 'package:citkmutnb/widget/department_page.dart';
import 'package:citkmutnb/widget/main_page.dart';
import 'package:citkmutnb/widget/map_page.dart';
import 'package:citkmutnb/widget/news_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> currentWidget = [
    MainPage(),
    Departmentpage(),
    NewsPage(),
    MapPage(),
    CalenderPage(),
  ];
  int index = 0;

  BottomNavigationBarItem mainBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('หน้าแรก'),
    );
  }

  BottomNavigationBarItem depaermentBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text('ภาควิชา'),
    );
  }

  BottomNavigationBarItem newsBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.perm_identity),
      title: Text('ข่าวสาร'),
    );
  }

  BottomNavigationBarItem mapBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.map),
      title: Text('แผนที่'),
    );
  }

  BottomNavigationBarItem calendarBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      title: Text('ปฏทิน'),
    );
  }

  List<BottomNavigationBarItem> setItem() {
    return <BottomNavigationBarItem>[
      mainBottom(),
      depaermentBottom(),
      newsBottom(),
      mapBottom(),
      calendarBottom()
    ].toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentWidget[index],
      bottomNavigationBar: myBottomNav(),
      appBar: AppBar(
        title: Text('เมนูหลัก'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  BottomNavigationBar myBottomNav() {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed,
      items: setItem(),
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }
}
