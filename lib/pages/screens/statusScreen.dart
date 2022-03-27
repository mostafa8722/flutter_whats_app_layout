import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>StatusScreenState();

}
class StatusScreenState extends State<StatusScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.black,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Status Screen",style: TextStyle(color: Colors.white),)],
        ),
      ),

    );
  }

}