import 'dart:convert';

import 'package:citkmutnb/utility/my_constant.dart';
import 'package:citkmutnb/utility/my_style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ShowListDegee extends StatefulWidget {
  final int degeeAInt;
  ShowListDegee({Key key, this.degeeAInt}) : super(key: key);
  @override
  _ShowListDegeeState createState() => _ShowListDegeeState();
}

class _ShowListDegeeState extends State<ShowListDegee> {
  List<String> listTitles = ['ปริญญาโท', 'ปริญญาตรี'];
  List<String> listdegree = ['ป.โท', 'ป.ตรี'];
  int index;

  List<String> departments = List();

  @override
  void initState() {
    super.initState();
    index = widget.degeeAInt;
    redaData();
  }

  Future<Null> redaData() async {
    try {
      String url =
          '${MyConstant().domain}/cit/getDegreeWhereId.php?isAdd=true&degree=${listdegree[index]}';
      Response response = await Dio().get(url);
      print('respone = $response');

      if (response.toString() != 'null') {
        var result = json.decode(response.data);
        print('resilt = $result');
        for (var json in result) {
          setState(() {
            departments.add(json['department']);
          });
        }
      }
    } catch (e) {
      print('e = ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index == null ? '' : listTitles[index]),
      ),
      body: departments.length == 0
          ? Mystyle().showProgress()
          : ListView.builder(itemCount: departments.length,
              itemBuilder: (context, index) => Text(departments[index]),
            ),
    );
  }
}
