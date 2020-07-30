

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
shop()
{
     
       
  
    press()
    {
      Fluttertoast.showToast(
        msg: "Shopping cart is empty",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }
    bar()
    {
      var IconShopping=Icon(Icons.shopping_cart);
    var Iconb=AppBar(
      backgroundColor: Colors.black,
      title: Text("Shopping App",style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),),
      centerTitle: true,
      leading: Image.network("https://raw.githubusercontent.com/muskan399/first/master/profile.png")  ,  
      actions: <Widget>[
            IconButton(icon: IconShopping, onPressed: press
            )
      ]
    );
    return Iconb;
  }
  content()
  {
    var cont=Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Stack(children: <Widget>[
        Container(
          //color: Colors.amber,
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(border:Border.all(
             width: 3,
             color: Colors.blue[700]
    ),
    borderRadius: BorderRadius.circular(50),
    color: Colors.blue[100]
  )
  ),
  Container(
    width: 200,
    height:200,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),

  
      
      image: DecorationImage
      (image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcROUhUi__f55nI2eN0KwjsBb7gwKCkoqC4mZQ&usqp=CAU"), 
      fit: BoxFit.cover),
      border: Border.all(),
      
),
margin: EdgeInsets.all(40.0),
alignment: Alignment.center,
  ),
Container(child:Stack(children: <Widget>[Text("White Teddy",style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 30.0,
          foreground: Paint()
          ..style=PaintingStyle.stroke
          ..strokeWidth=5
          ..color= Colors.black,
          

        )),
        Text("White Teddy",style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,

        ),
        )
        ]
        ),
       margin: EdgeInsetsDirectional.only(top:250.0,start:50.0),
      //  alignment: AlignmentDirectional.bottomEnd,

        )
      ]
      ),
        Container(child: Row(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(Icons.money_off),
          Text("Price: "),
          Text("100Rs"),  
        ],)
        
      ),
      Container(
        child: RatingBar(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
            )  ,
      )
      ]),
    );
          return cont;
  }
  app()
  {
    var scaff=Scaffold(
      appBar: bar(),
      body: content(),
      backgroundColor: Colors.grey,
    );
    return scaff;
  }
  var design=MaterialApp(home: app(),
  debugShowCheckedModeBanner: false,
  );
  return design;
}