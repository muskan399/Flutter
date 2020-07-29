import 'package:flutter/material.dart';

Myapp()
{
  var a=AppBar(
    title: Text("Who's watching?"),
    backgroundColor: Colors.black,
    leading: Image.network("https://raw.githubusercontent.com/muskan399/first/master/netflix.png"),
    centerTitle: true,
    );
  cont()
  {
    var Box=Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network("https://raw.githubusercontent.com/muskan399/first/master/profile.png"),  
          Text("Muskan",
            style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "TimesNewRoman"
              )
            ),
        ],)
       // decoration: 
      ,);
    return Box;
  }
  app()
  {
    var Scaff=Scaffold(
      appBar: a,
      body: cont(),
      backgroundColor: Colors.black,
      );

    return Scaff;
  }
  var design=MaterialApp(home: app(),debugShowCheckedModeBanner: false,);
  return design;
}