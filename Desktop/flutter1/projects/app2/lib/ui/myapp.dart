import 'package:flutter/material.dart';

myapp()
{
  var MyColorIcon=Icon(Icons.color_lens,size: 30.0,);
  var MyAlarmIcon=Icon(Icons.access_alarm,size: 30.0,);
  var MyPlaneIcon=IconButton(icon: MyAlarmIcon,onPressed: null,splashColor: Colors.pink,tooltip: "Nothing to do!!");
  var Bar=AppBar(
    title: Text("Second App"),
    leading: MyColorIcon,
    actions: <Widget>[MyAlarmIcon,],

  );
  app()
  {
     var Cont=Container(
       width: 700.0,
       height: 700.0,
       child: Center(
         child: Column(children: <Widget>[
          Text("Shinchan",
           style: TextStyle(fontSize: 30.0,
           )

           ),
           Text("Nobita"),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTVTOeijqqJjVjue96P8acvO3iqnj6RXs-Pyg&usqp=CAU"),
         ],),
       ),
       decoration: BoxDecoration(
       color: Colors.pink[300],
       ),
     );
     return Cont;
  }
  dapp()
  {
    var Structure=Scaffold(
      appBar: Bar,
      body: app(),
    );
    return Structure;
  }
  
  var design=MaterialApp(home: dapp(),
  debugShowCheckedModeBanner: false,
  );
  return design;
}