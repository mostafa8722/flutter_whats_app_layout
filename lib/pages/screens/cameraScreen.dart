import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>CameraScreenState();

}
class CameraScreenState extends State<CameraScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.green,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Camera Screen",style: TextStyle(color: Colors.white),)],
        ),
      ),

    );
  }

}