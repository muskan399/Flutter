import 'package:app4/ui/myapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
main()
{
  runApp(
    myapps());
   FlutterStatusbarcolor.setStatusBarColor(Colors.blue[400]);
}
class myapps extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return shop();
  
  }


  }
 