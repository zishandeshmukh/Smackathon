import 'package:flutter/material.dart';
import 'package:women_safety/pages/profile.dart';

import 'contact_list.dart';
import 'emergency.dart';

class DynamicMain extends StatefulWidget{
  const DynamicMain({super.key});
  @override
  _DynamicMain createState()=>_DynamicMain();
}

class UserProfile{
  late double id =0;
  late String name ="username";
  late String mobile= "+91 0000000000";
  late String email = "xyz";

  UserProfile();
}

class _DynamicMain extends State<DynamicMain>{
  @override
  int pageNav=0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  UserProfile userProfile= new UserProfile();
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        key:_scaffoldKey,

        floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.call,color:Colors.white),shape: CircleBorder(),elevation: 5,backgroundColor: Colors.pink
          ,),
        endDrawer:Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle,size:70,color:Colors.pink),
                    Text(userProfile.name,),
                  ],
                )
              ),
              ListTile()
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.dangerous,color:Colors.white),label: "Emergency"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts,color:Colors.white),label: "Contact List"),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color:Colors.white),label : "Profile")
        ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (int indexOfItem){
          setState(() {
            pageNav=indexOfItem;
            print(indexOfItem.toString());
          });
          },
          backgroundColor: Colors.pink,
          currentIndex: pageNav,
          iconSize: 35,
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.pink,
              leading:IconButton(onPressed: (){Navigator.of(context).pushNamed("/notifications");}, icon:const Padding(padding:EdgeInsets.symmetric(horizontal: 10),child:Icon(Icons.notifications_active_outlined,color:Colors.white,size:35))),
              automaticallyImplyLeading: false,
              title:Text(pageNav==0?"Emergency":(pageNav==1?"Contact List":"Profile"),style: TextStyle(color:Colors.white),),
              centerTitle: true,
              actions: [
                IconButton(onPressed: (){
                  _scaffoldKey.currentState?.openEndDrawer();
                  }, icon: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:Icon(Icons.account_circle,size:40,color: Colors.white,)
                ))

              ],
            ),
            SliverToBoxAdapter(
              child:
                Container(
                  padding: EdgeInsets.symmetric(horizontal:15),
                  child:pageNav==0?Emergency():(pageNav==1?ContactList():Profile()),
                )

            )
          ],
        ),
      );
  }
}