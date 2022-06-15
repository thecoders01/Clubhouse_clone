//import 'dart:ui';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:clubhouse_clone_ui/constant/style.dart';
import 'package:clubhouse_clone_ui/views/friendspage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 100,
             color: Color(0xFF0D0D0D),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 // SizedBox(width: 10,),
Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 18.0,top: 18),
      child: CircleAvatar(
        maxRadius: 20,
        //backgroundColor: Colors.purple[900],
        child:Icon(Ionicons.caret_up_outline,color: Colors.white,size: 18,) ,
        backgroundColor: Color(0xFF383CC1),
      ),
    ),
        Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 18),
      child:   text,
    ),
  ],
),



  Padding(
   padding: const EdgeInsets.only(right: 18.0,top: 18),
    child: BouncingWidget(
      duration: Duration(milliseconds: 100),
  scaleFactor: 1.5,
  onPressed: () {
    Get.to(Friendspage());
    print("onPressed");
  },
      child: Icon(Ionicons.search_outline,color: Colors.white,size: 25,)),
  ),
    //SizedBox(width: 10,),
              ],)
            );
  }
}

// 