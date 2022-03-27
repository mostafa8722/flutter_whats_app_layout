import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>CallScreenState();

}
class CallScreenState extends State<CallScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.blue,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Call Screen",style: TextStyle(color: Colors.white),)],
        ),
      ),

    );
  }

}