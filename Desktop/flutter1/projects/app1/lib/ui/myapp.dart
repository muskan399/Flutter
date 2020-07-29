import 'package:flutter/material.dart';
myapp()
{
  app()
  {
    var MyAndroidIcon=Icon(Icons.home);
    var MyAlarmIcon=Icon(Icons.image);
    var MyAirplayBIcon=IconButton(icon: MyAndroidIcon, onPressed: null, hoverColor: Colors.purple, tooltip: "do nothing",);
    var a=AppBar(
      backgroundColor: Colors.pink[200],
      title: Text('My first app'),
      leading: MyAndroidIcon,centerTitle: true,
      actions: <Widget>[MyAlarmIcon, MyAirplayBIcon,],

      );
    var b=Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5Mmnn-X5nYdhL69r9oYb5lsJzSVo4gxSBYw&usqp=CAU");
    var ScaffVar= Scaffold(
      appBar: a,
      body: b,
    );
    return ScaffVar;
  }
  var design=MaterialApp(home: app(), debugShowCheckedModeBanner: false);
  return design;
  
}