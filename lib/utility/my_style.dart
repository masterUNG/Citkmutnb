import 'package:flutter/material.dart';

class Mystyle {

Widget mySizeBox(double height){
  return SizedBox(height: height);
}


  Widget myBG() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 200,
              height: 250,
              child: Image.asset('images/bg.png', fit: BoxFit.scaleDown),
            ),
          ],
        ),
      ],
    );
  }

  Widget showTitle(String string) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          string,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Mystyle();
}
