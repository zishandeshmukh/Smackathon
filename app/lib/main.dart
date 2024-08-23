import 'package:flutter/material.dart';
import 'package:women_safety/pages/dynamic_main.dart';
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DynamicMain(),
      routes:{
        '/user':(context)=>DynamicMain(),
      },
    );
  }
}