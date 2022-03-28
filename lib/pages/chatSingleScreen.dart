

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whats_app/model/chat.dart';
import 'package:flutter_whats_app/pages/secondScreen.dart';

class ChatSingleScreen  extends StatefulWidget{
  final Chat data;

  ChatSingleScreen({Key key, this.data}) : super(key: key);
  @override
  State<StatefulWidget> createState() =>ChatSingleState();

}
class ChatSingleState extends State<ChatSingleScreen> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Row(
          children: [
            new CircleAvatar(
             child: Image.network(widget.data.avatar),
              
            ),
             new Text(widget.data.name),
          ],
        ),
      ),
      body: new Center(
        child :new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            new Row(
              children: [
               new Padding(
                 child:  new RaisedButton(
                     child: new Text("next Page"),
                     onPressed:(){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => SecondScreen()),
                       );
                     } ),
                 padding: EdgeInsets.all(10),
               ),
                new Padding(
                padding: EdgeInsets.all(10),
                  child:  new RaisedButton(
                      child: new Text("back"),
                      onPressed:(){
                        Navigator.pop(context );},

                ))
              ],
            )
          ],
        )
      ),
    );
  }

}