import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallPage extends StatefulWidget{
  const CallPage({super.key});
  @override
  _CallPage createState ()=> _CallPage();
}

class _CallPage extends State<CallPage>{
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
        title:const Text("Call",style:TextStyle(color:Colors.white)),
        centerTitle: true,

      ),
    ));
  }
}