import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedItems extends StatelessWidget {
  



final String title,img1,img2,img3,subtitle , pconnected,ptalking;
  
  const FeedItems({Key? key,required this.title,
  required this.img1,
        required this.img2,required this.img3,
        required this.subtitle,required this.pconnected,
        required this.ptalking,
        
        }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 170,
            width: 350,
            decoration: BoxDecoration(
              
            // color: Color(0xFF1B2430),
              color: Colors.blueGrey.withOpacity(.1),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             
            ),
      
      child: Column(children: [
        Expanded(
          
          child: Container(
             width: 350,
             decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.only(topLeft:Radius.circular(10) ,topRight: Radius.circular(10)),
             
            ),


            child: Padding(
              padding: const EdgeInsets.only(left:15.0,top: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [




                Text(title,style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.white, 
    fontWeight: FontWeight.bold,letterSpacing: .2,fontSize: 19,),
  ),),
SizedBox(height: 10,),
       Text(subtitle,style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.blueGrey,letterSpacing: .2,fontSize: 15,),
  ),),



              ],),
            ),
           )),

          Expanded(
          
          child: Container(
            
         decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10) ,bottomRight: Radius.circular(10)),
             
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Row(
                    children: [

                      Container(
                        width: 40,
                        height: 40,
                         decoration: BoxDecoration(
                            image: DecorationImage(
        image: AssetImage(img1),
        fit: BoxFit.cover),
             // color: Colors.blue,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             


             
            ),


                      ),

                      SizedBox(width: 14,),
                       Container(
                      width: 40,
                      height: 40,
                         decoration: BoxDecoration(
                                    image: DecorationImage(
        image: AssetImage(img2),
        fit: BoxFit.cover),
            //  color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             
            ),
                      ),
                       SizedBox(width: 14,),
                       Container(
                        width: 40,
                        height: 40,
                         decoration: BoxDecoration(
                                    image: DecorationImage(
        image: AssetImage(img3),
        fit: BoxFit.cover),
            //  color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             
            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                   padding: const EdgeInsets.only(right:18.0),
                  child: Container(
                    height: 45,
                    width: 120,
                     decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
             
            ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Icon(Ionicons.person,color: Colors.blueGrey.withOpacity(.7),size: 18,),
                  ) ,
                  Text(pconnected,style: TextStyle(color: Colors.blueGrey.withOpacity(.7),fontSize: 15),),
                   Icon(Ionicons.mic_outline,color: Colors.blueGrey.withOpacity(.7),size: 18,) ,
                  
                  Padding(
                     padding: const EdgeInsets.only(right:8.0),
                    child: Text(ptalking,style: TextStyle(color: Colors.blueGrey.withOpacity(.7),fontSize: 15),),
                  )
                 ],),
                 
                 
                  ),
                )
              ],
            ),
            ))
      ],),
      ),
    );
  }
}