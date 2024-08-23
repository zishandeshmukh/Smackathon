import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});
  @override
  _NotificationPage createState ()=> _NotificationPage();
}

class _NotificationPage extends State<NotificationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamed("/user");
        },
            icon: const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child:Icon(Icons.arrow_back_ios,color: Colors.white,))),
        title:const Text("Notification",style:TextStyle(color:Colors.white)),
        centerTitle: true,

      ),
    ));
  }
}