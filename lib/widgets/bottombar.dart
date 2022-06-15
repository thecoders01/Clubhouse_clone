import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';
class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
height: 80,
color: Colors.transparent,

child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Icon(Ionicons.share_social ,color: Colors.blueGrey.withOpacity(.7),size:30),
SizedBox(width:50),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 180,
                            height: 60,
                             decoration: BoxDecoration(
                 // color: Colors.purple[900],
                 color: Color(0xFF383CC1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                 
                ),

                child: Row(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:13.0,right: 8.0),
                      child: Icon(Ionicons.add_circle,color: Colors.white,size:30),
                    ),

                    Text("Start a room",style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.white, 
    fontWeight: FontWeight.bold,letterSpacing: .2,fontSize: 17,),
  ),)
                  
                  
                  
                  
                  ],
                ),
        ),
      ),
      SizedBox(width:50),
      Icon(Ionicons.grid,color: Colors.blueGrey.withOpacity(.7),size:30),
  ],
),


      ),
    );
  }
}