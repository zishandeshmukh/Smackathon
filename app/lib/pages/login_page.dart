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
                ],
            ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child:Text("Login",style : TextStyle(
                      fontSize: 25,
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: BoxShadow(Colors.grey,)
                    ),
                    child: ClipRRect(
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text("Username/ Email"),
                            prefix: Padding(padding: EdgeInsets.fromLTRB(0, 4, 10, 0),child:Icon(Icons.account_circle,size:34)),
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              )
          ],
        ),
      ),
    );
  }
}