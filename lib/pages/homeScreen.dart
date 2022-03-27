


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whats_app/pages/screens/callScreen.dart';
import 'package:flutter_whats_app/pages/screens/cameraScreen.dart';
import 'package:flutter_whats_app/pages/screens/chatScreen.dart';
import 'package:flutter_whats_app/pages/screens/statusScreen.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController tabController =null;
  Map<String,SliverAppBar>  appBarList ;
  String _currentAppBar = "main";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);

    SliverAppBar mainSliverAppBar = SliverAppBar(
      pinned:true,
      floating: true,
      elevation:5,
      title: new Text("what's app"),
      actions: [
        new GestureDetector(
          child:new Icon(Icons.search) ,
          onTap: (){
            setState(() {
              _currentAppBar = "search";
            });
          },
        ),

        new PopupMenuButton<String>(
            onSelected: (String choice){print(choice);},
            itemBuilder:(BuildContext context){
              return [
                new PopupMenuItem(
                  value: "new_group",
                  child: new Text("new Group"),
                ),
                new PopupMenuItem(
                  value: "settings",
                  child: new Text("settings"),
                )
              ];
            }
        )
      ],


      bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs:<Widget>[
            new Tab(icon:  new Icon(Icons.camera_alt),),
            new Tab(text: "chats",),
            new Tab(text: "status",),
            new Tab(text: "contacts",),


          ]

      ),
    );

    SliverAppBar searchSliverAppBar = SliverAppBar(
      pinned:true,
      floating: true,
      elevation:5,
    backgroundColor: Colors.white,
     leading: new GestureDetector(
       child: new Icon(Icons.arrow_back,color: Colors.black38,) ,
       onTap: (){
        setState(() {
          _currentAppBar = "main";
        });
       },
     ),
      title:
      new TextField(
        decoration: new InputDecoration(
          border:InputBorder.none,
          hintText: "search ..."

        ),
      )
      ,



    );
    appBarList = <String,SliverAppBar>{
      "main" : mainSliverAppBar,
      "search" : searchSliverAppBar,

    };
  }


  @override
  Widget build(BuildContext context) {
     return new Scaffold(

       body: new NestedScrollView(
         headerSliverBuilder:(BuildContext context ,bool inner){
           return <Widget> [

             appBarList[_currentAppBar]
             
           ];
         } ,
         body: _currentAppBar == "main" ?
         new TabBarView(
           controller: tabController,
           children: [
             new CameraScreen(),
             new ChatScreen(),
             new StatusScreen(),
             new CallScreen(),

           ],
         ):
             new Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 new Center(
                   child: new Text("search"),
                 )
               ],
             )

         ,
       ),
       floatingActionButton: new FloatingActionButton(
         backgroundColor: new Color(0xff128c32),

           child: new Icon(Icons.add,color: Colors.white,),
           onPressed:null),
     );
  }

}