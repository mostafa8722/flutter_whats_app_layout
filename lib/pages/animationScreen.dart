import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AnimationState();

}

class _AnimationState extends State<AnimationScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller ;
   @override
  void initState() {
    super.initState();
    _controller = new AnimationController(vsync: this);
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body:
      new Center(
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           new Container(
             height: 100,
             width: 100,
             child: FlutterLogo(),
           ),

           new RaisedButton(
             child: new Text("Run"),
             onPressed: (){

             },
           )
         ],
        ) ,
      )

      ,
    );
  }

}