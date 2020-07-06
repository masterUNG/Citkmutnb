import 'package:flutter/cupertino.dart';

class Diagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(25),
      children: <Widget>[
        showlogo(),
        
      ],
    );
  }

  Container showlogo() => Container(
        // width: 500,
        height: 260,
        child: Image.asset('images/diagram.png',fit: BoxFit.cover,),
      );
  }

