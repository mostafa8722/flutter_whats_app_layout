import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_SplashState();

}
class _SplashState extends State<SplashScreen> {
  _startTimer(){
  var _duration  = new Duration(seconds:4);
  return new Timer(_duration, callback);

  }
  callback(){
    //Navigator.of(context).pushNamed("/anim");
    Navigator.of(context).pushNamed("/");
  }

  @override
  void initState() {

    super.initState();
    _startTimer();

  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: new Color(0xff128c7e),
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Center(
                child: new Text("welcome to",style: TextStyle(color: Colors.white),),

              ),
              new Center(
                child: new Text("what's app",style: TextStyle(color: Colors.white),),

              ),


            ],

          ),
         new Padding(
           padding: EdgeInsets.all(10),
           child:
           new Align(
             alignment: Alignment.bottomCenter,
             child:
             CircularProgressIndicator(

               valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),

             )
             ,
           )
           ,
         )
        ],
      )
      ,
    );
  }

}