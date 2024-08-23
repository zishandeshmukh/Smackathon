import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget{
  const SignupPage({super.key});
  @override
  _SignupPage createState()=> _SignupPage();
}

class _SignupPage extends State<SignupPage>{
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
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding:EdgeInsets.symmetric(vertical: 20),
                  child:Text("Sign Up",style:TextStyle(fontSize: 24,color:Colors.deepPurple)),),
                GestureDetector(
                  onTap: (){
                    print("I love you");
                  },
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        color: Colors.pinkAccent,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding:EdgeInsets.symmetric(horizontal:30),
                              child : Icon(Icons.mail,color:Colors.white,size:40)
                              ,),
                            Text("Continue with Mail",style:TextStyle(color:Colors.white)),
                          ],
                        ),
                      )
                  ),
                ),
                SizedBox(height:13),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: Colors.pinkAccent,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding:EdgeInsets.symmetric(horizontal:30),
                            child : Icon(Icons.phone_android,color:Colors.white,size:40)
                            ,),
                          Text("Join with mobile",style:TextStyle(color:Colors.white)),
                        ],
                      ),
                    )
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 20),
                  child:TextButton(onPressed: (){
                    Navigator.of(context).pushNamed('/login');
                  }, child: Text("Already have an account? Login",style:TextStyle(fontSize: 12))),
                )
              ],
            ),
            ),
          ],
        ),
      )
    );
  }
}