import 'package:app5/ui/test.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

 app()
{

  msg()
  {
    return Fluttertoast.showToast(
        msg: "Revive yourself with our music",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 4,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  
  AudioPlayer a=AudioPlayer();
  AudioCache player = AudioCache(prefix: 'audio/',fixedPlayer: a );



          
    // call this method when desired
   
       
  stop1()
  async{
  int result = await a.stop();
     return result;
     
  }

  resumev()
   async{
   int result = await a.resume();
   return result;
     
  }
  
  content()
  {
   
        var d= Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
              Container(
    
                          color: Colors.green[100],
                          width: double.infinity,
                          height: 250,
                          child: Container(
               
                          width: 250,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                            color: Colors.blue[200],
                             style: BorderStyle.solid
    
                           )
    
                          ,
                            )
                            ,child: VideoApp()
                            ),
    
                            margin: EdgeInsets.only(bottom: 20.0),  
    
                      
    
                      alignment: Alignment.center,
    
                      
    
                    ),
                    IconButton(icon: Icon(Icons.nature),
                    onPressed: msg,
  
    
                  //  alignment: Alignment.center,
                
                    )]
                  ),
    
           
    
                  Container(
    
                    margin: EdgeInsets.all(5),
    
                 
    
                    child: Text("Meditate yourself!!",
    
                    style: GoogleFonts.lilitaOne(
    
                      color: Colors.black,
    
                      fontSize: 25,
    
                      fontWeight: FontWeight.bold
    
                    
                    ),
                    //  foreground: Paint()
    
                    ),
    
                    
    
                  
    
                    decoration: BoxDecoration(
    
                         color: Colors.blue[50],
    
                      borderRadius: BorderRadius.circular(30)
    
                    ),
    
                  ),
    
                 
    
            
    
            Row(
    
              children: <Widget>[
    
                Container(
    
                decoration: BoxDecoration(
    
                  borderRadius: BorderRadius.circular(50),
    
                  color: Colors.green[50] ,
    
                ),
    
                alignment: Alignment.center,
    
                width: 160,
    
                height: 40,
    
                child: Text("Songs List", style: GoogleFonts.lilitaOne(
    
                  fontSize: 20,
    
                  fontWeight: FontWeight.w500
    
                ),),
    
                margin: EdgeInsets.all(20),),
    
    
    
              Icon(Icons.music_note),
    
                
    
              ],
    
            ),
    
            Container(
    
              margin: EdgeInsets.all(10),
    
              child: Row(
    
                children: <Widget>[
    
                  Text("Click on song to play!!" ,style:GoogleFonts.lindenHill(
    
                      fontSize: 18,
    
                      fontWeight: FontWeight.bold
    
                    ) 
    
                    ),
    
                   // padding: EdgeInsets.all(20),
    
                    
    
                 ] ),
  
                    ),
    
         
            Row(
              children: <Widget>[
                Container(
                  child: Column(
    
                    children: <Widget>[
    
                      Container(
    
                          margin: EdgeInsets.all(10),
    
                        child: RaisedButton(
    
                              child: Container(child: Text("Relaxing sound",
                          
    
                          style:GoogleFonts.lindenHill(
    
                            fontSize: 20,
    
                            fontWeight: FontWeight.bold,
                            
    
                          ) ,),
    
                         // padding: EdgeInsets.all(20),
    
                          width: 100,
                         
                          height: 60,
                         
                          alignment: Alignment.center,
    
                          ),
    
                          onPressed: ()=>player.play('meditate.mp3')
    
          ),
                      ),
                    
                  
         
    
                      Container(
    
                        margin: EdgeInsets.all(10),
    
                        color: Colors.pink,
    
                        child: RaisedButton(
    
                              child: Container(child: Text("Count on me",
    
                          style:GoogleFonts.lindenHill(
    
                            fontSize: 20,
    
                            fontWeight: FontWeight.bold
    
                          ) ,),
    
                         // padding: EdgeInsets.all(20),
    
                          width: 100,
    
                          height: 60,
    
                          alignment: Alignment.center,
    
                          ),
    
                          onPressed: ()async=> 
                                      await a.play('https://raw.githubusercontent.com/muskan399/first/master/Count%20On%20Me%20-%20Bruno%20Mars%20(Lyrics)%20%F0%9F%8E%B5.mp3')
 
    
          ),),
    
      
        
    
              ],
            ),
            
            ),
            
    
              Container(
               
                margin: EdgeInsets.all(15),
                width:220 ,
                height: 130,
                decoration: BoxDecoration(color: Colors.purple[100],
                borderRadius: BorderRadiusDirectional.circular(10)
                ),
                
                              child: Container(
                  
                  width: 180,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/muskan399/first/master/images.jpeg"))
                  ),
                  
                ),
              )] 
    
        
    
  ),
  
                Container(
    
                  padding: EdgeInsets.all(5),
    
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.green[100],),
    
                  width: 120,
    
                  height: 60,
    
                 
    
                  child: Row(
    
                    mainAxisAlignment: MainAxisAlignment.center,
    
                    //crossAxisAlignment: CrossAxisAlignment.end,
    
               
    
                  children: <Widget>[
    
                    IconButton(icon: Icon(Icons.stop),
    
                    onPressed: stop1,
    
                    ),
    
               
    
           
    
          IconButton(icon: Icon(Icons.pause),
    
          onPressed: resumev,)
    
           ],
    
              ),
    
                ),
          ]
  );

            
    return d;


  }
  var design=MaterialApp(home: Scaffold(
    body: content(),
    backgroundColor: Colors.pink[50],
  ),
  color: Colors.blue[100],
  debugShowCheckedModeBanner: false,);

  return design;
}

