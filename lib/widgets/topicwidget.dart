import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';
class TopicWidget extends StatelessWidget {
  const TopicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(

        height: 90,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
 border: Border.all(color: Colors.blueGrey.withOpacity(.3),width: 2.5)
                  
                 
                ),
   child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
       children: [
       Padding(
         padding: const EdgeInsets.only(left:14.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text("19:00 - 21:00",style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.blueGrey, 
    fontWeight: FontWeight.bold,letterSpacing: .2,fontSize: 15,),
  ),),
          Text("Design team meeting",style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.white,letterSpacing: .2,fontSize: 18,),
  ),),
      
         ],),
       ), 

        Padding(
         padding: const EdgeInsets.only(right:14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.chevron_down_outline,color: Colors.blueGrey.withOpacity(.7),size: 20,),
            ],
          ),
        ),
   ],),
   
   
      ),
    );
  }
}