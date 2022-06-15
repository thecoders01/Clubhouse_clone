import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget items_list(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
Itemswidget(name: "Design",img: "assets/membrane.png",bgcolor:Colors.yellow), 
Itemswidget(name: "Gaming",img: "assets/vr.png",bgcolor:Colors.red),
Itemswidget(name: "Sports",img: "assets/sports.png",bgcolor:Colors.orange),
Itemswidget(name: "Code",img: "assets/code.png",bgcolor:Colors.blue),
Itemswidget(name: "Gaming",img: "assets/vr.png",bgcolor:Colors.purple),

 ],
  ),);
}




class Itemswidget extends StatelessWidget {
 
  final String name,img;
  final Color bgcolor;
  const Itemswidget({Key? key,required this.name,
  required this.bgcolor,
        required this.img,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
              width: 120,
              decoration: BoxDecoration(
                color: bgcolor.withOpacity(.1),
                borderRadius: const BorderRadius.all(Radius.circular(40)),
               
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   SizedBox(width: 15,),
                  Image.asset(img,width: 25,height: 25,),
                  SizedBox(width: 10,),
                  Text(name,style: GoogleFonts.ubuntu(
    textStyle: const TextStyle(color: Colors.white,letterSpacing: .2,),
  ),)
                ],
              ),
      ),
    );
  }
}