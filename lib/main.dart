import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/home_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      routes: {
          '/':(context)=>BotonesPage(),

      }
      
    );
  }
}