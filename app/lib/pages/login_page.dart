import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  _LoginPage createState()=> _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/icon.jpg",width:200),
                    SizedBox(height:15),
                    Text("s a f e g u a r d", style:TextStyle(color:Colors.orange,fontSize: 20)),
                    Text("Mobile Service", style:TextStyle(color:Colors.orange,fontSize: 10)),
                    SizedBox(height:30)
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child:Text("Login",style : TextStyle(
                        fontSize: 25,
                      )),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black26,
                                  offset:Offset(0.5, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ]
                          ),
                          child: const TextField(
                              cursorColor: Colors.pink,
                              decoration:InputDecoration(
                                  icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.account_circle,size:35,color:Colors.pink),),
                                  border:InputBorder.none ,
                                  labelText: "username/email",
                                  labelStyle:TextStyle(color: Colors.black54)
                              )),
                        )
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                        child:Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black26,
                                  offset:Offset(0.5, 0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ]
                          ),
                          child: const TextField(
                              cursorColor: Colors.pink,
                              decoration:InputDecoration(
                                  icon:Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Icon(Icons.password_rounded,size:35,color:Colors.pink),),
                                  border:InputBorder.none ,
                                  labelText: "password",
                                  labelStyle:TextStyle(color: Colors.black54)
                              )
                          ),
                        )
                    ),

                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}