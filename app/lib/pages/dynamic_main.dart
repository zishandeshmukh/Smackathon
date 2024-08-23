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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(

            ),
            SliverToBoxAdapter(
              child:pageNav==0?Emergency():(pageNav==1?ContactList():Profile()),


            )
          ],
        ),
      );
  }
}