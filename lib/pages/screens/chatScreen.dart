import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whats_app/model/chat.dart';

class ChatScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>ChatScreenState();

}
class ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: dummyData.length,
        itemBuilder: (context,index){
         return new Column(
           children: [
             new ListTile(
               leading: new CircleAvatar(  backgroundImage: NetworkImage(dummyData[index].avatar)),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(dummyData[index].name,style: TextStyle(color: Colors.black38),),
                  new Text(dummyData[index].date,style: TextStyle(color: Colors.black26,fontSize: 13.0),),
                ],
              ),
               subtitle:
               new Text(dummyData[index].message,style: TextStyle(color: Colors.black38,fontSize: 13.0),),

             ),
             new Divider(
               height: 2,
               color: new Color(0xffeeeeee),
             )
           ],

         );
        }
    );
  }

}