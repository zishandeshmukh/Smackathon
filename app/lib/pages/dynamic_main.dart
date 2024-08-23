import 'package:flutter/material.dart';
import 'package:women_safety/pages/profile.dart';
import 'contact_list.dart';
import 'emergency.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';



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
  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(pageNav);
  }

  @override
  void dispose() {
    // Dispose the controller to avoid memory leaks
    _navigationController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  UserProfile userProfile= new UserProfile();
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        key:_scaffoldKey,
        floatingActionButton: FloatingActionButton(onPressed: (){
          switch(pageNav){
            case 0:{
              Navigator.of(context).pushNamed('/call');
            }break;
            case 1:{

            }break;
            case 2:{

            }break;
          }

        },shape: const CircleBorder(),elevation: 5,backgroundColor: Colors.pink
          ,child:Icon(pageNav==0?Icons.call:(pageNav==1?Icons.person_add:Icons.add),color:Colors.white),),
        endDrawer:Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.account_circle,size:70,color:Colors.pink),
                    Text(userProfile.name,style:TextStyle(fontSize: 10
                    )),
                    Padding(padding: EdgeInsets.symmetric(horizontal:10),
                      child:Text(userProfile.id.toString()),

                    )
                  ],
                ),
              ),

            ],
          ),
        ),

        bottomNavigationBar: CircularBottomNavigation(
          [
            TabItem(Icons.home, "Home", Colors.pink,circleStrokeColor: Colors.pink,labelStyle : TextStyle(color:Colors.white )),
            TabItem(Icons.contacts, "Contacts", Colors.pink,circleStrokeColor: Colors.pink,labelStyle : TextStyle(color:Colors.white )),
            TabItem(Icons.settings, "Settings", Colors.pink,circleStrokeColor: Colors.pink,labelStyle : TextStyle(color:Colors.white )),
          ],
          controller: _navigationController,
          barHeight: 60,
          circleSize: 70,
          barBackgroundColor: Colors.pink,
          animationDuration: const Duration(milliseconds: 300),
          normalIconColor: Colors.white60,
          selectedCallback: (int? indexOfItem) {
            setState(() {
                pageNav=indexOfItem!;
              });
          },
        ),

        // BottomNavigationBar(items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.dangerous,color:Colors.white),label: "Emergency"),
        //   BottomNavigationBarItem(icon: Icon(Icons.contacts,color:Colors.white),label: "Contact List"),
        //   BottomNavigationBarItem(icon: Icon(Icons.settings,color:Colors.white),label : "Profile")
        // ],
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.grey,
        //   onTap: (int indexOfItem){
        //   setState(() {
        //     pageNav=indexOfItem;
        //     print(indexOfItem.toString());
        //   });
        //   },
        //   backgroundColor: Colors.pink,
        //   currentIndex: pageNav,
        //   iconSize: 35,
        // ),



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