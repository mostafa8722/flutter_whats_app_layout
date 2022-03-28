

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>SecondState();

}
class SecondState extends State<SecondScreen>{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child:
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("second page")
          ],
        ),
      ),
    );
  }

}