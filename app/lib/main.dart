import 'package:flutter/material.dart';
import 'package:women_safety/pages/call_page.dart';
import 'package:women_safety/pages/dynamic_main.dart';
import 'package:women_safety/pages/notification_page.dart';

void main()=>runApp(const MainApp());

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
        '/notifications':(context)=>NotificationPage(),
        '/call':(context)=>CallPage(),
      },
    );
  }
}