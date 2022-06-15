import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Friendspage extends StatelessWidget {
  const Friendspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BouncingWidget(
                            duration: Duration(milliseconds: 100),
                            scaleFactor: 1.5,
                            onPressed: () {
                              Get.back();
                              print("onPressed");
                            },
                            child: Icon(
                              Ionicons.chevron_back_outline,
                              color: Colors.white,
                              size: 25,
                            )),
                        Text(
                          "Friends",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: .5,
                                fontSize: 20),
                          ),
                        ),
                        Icon(
                          Ionicons.filter_outline,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  Friend_widget("assets/P1.jpg", Colors.green, "Kietta Torff",
                      "In a room with you"),
                  Friend_widget("assets/P2.jpg", Colors.green,
                      "Allison Dorwart", "Online"),
                  Friend_widget(
                      "assets/P3.jpg", Colors.green, "Zaire Levin", "Online"),
                  Friend_widget("assets/P5.jpg", Colors.orange,
                      "Kianna Bothman", "2h ago"),
                  Friend_widget("assets/P6.jpg", Colors.white,
                      "Marilyn Siphron", "18h ago"),
                  Friend_widget("assets/P9.jpg", Colors.white,
                      "Kianna Schleifer", "2d ago"),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "PEOPLE YOU MAY KNOW",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: .5,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pymk_widget("assets/P7.jpg", "@kierrat", "Kierra Torff"),
                  pymk_widget(
                      "assets/P8.jpg", "@dorwartail", "Allison Dorwart"),
                  pymk_widget("assets/PP10.jpg", "@zaimnabrat", "Zaire Levin"),
                  SizedBox(
                    height: 70,
                  ),
                ],
              )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Invitefriend_btn(),
            )
          ],
        ));
  }

  Widget Friend_widget(img, state1, name, state2) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 56,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    //  color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(13)),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        maxRadius: 7,
                        child:
                            CircleAvatar(maxRadius: 5, backgroundColor: state1),
                        backgroundColor: Colors.black,
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .2,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      state2,
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                            color: Colors.blueGrey,
                            letterSpacing: .2,
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              width: 55,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(.2),
                //  color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              child: Center(
                  child: Icon(
                Ionicons.lock_closed,
                color: Colors.blueGrey,
                size: 18,
              )),
            ),
          ],
        ),
      ),
    );
  }

  // people you may know
  Widget pymk_widget(img, nikname, name) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 56,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    //  color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(13)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .2,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      nikname,
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                            color: Colors.blueGrey,
                            letterSpacing: .2,
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              width: 55,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.black,
                //  color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(13)),
              ),
              child: Center(
                  child: Icon(
                Ionicons.add,
                color: Colors.blueGrey,
                size: 26,
              )),
            ),
          ],
        ),
      ),
    );
  }

  // invite friend btn

  Widget Invitefriend_btn() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 190,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            border:
                Border.all(color: Colors.blueGrey.withOpacity(.9), width: 2.5)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 8.0),
              child:
                  Icon(Ionicons.add_circle, color: Color(0xFF383CC1), size: 30),
            ),
            Text(
              "Invite friends",
              style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .2,
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
