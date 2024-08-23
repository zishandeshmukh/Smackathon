import 'package:flutter/material.dart';
import 'package:women_safety/pages/profile.dart';

import 'contact_list.dart';
import 'emergency.dart';

class DynamicMain extends StatefulWidget{
  const DynamicMain({super.key});
  @override
  _DynamicMain createState()=>_DynamicMain();
}

class _DynamicMain extends State<DynamicMain>{
  @override
  int pageNav=0;
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.dangerous,color:Colors.white),label: "emergency"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts,color:Colors.white),label: "contact list"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,color:Colors.white),label : "profiler")
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