import 'package:clubhouse_clone_ui/widgets/appbar.dart';
import 'package:clubhouse_clone_ui/widgets/bottombar.dart';
import 'package:clubhouse_clone_ui/widgets/categorieitems.dart';
import 'package:clubhouse_clone_ui/widgets/feedItems.dart';
import 'package:clubhouse_clone_ui/widgets/topicwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            color: Color(0xFF0D0D0D),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Appbar(),
                  items_list(),
                  const TopicWidget(),
                  const FeedItems(
                    title: "What's the meaning of life ?",
                    subtitle:
                        "Trying to answer the ultimate question  \n of human life on earth.",
                    img1: "assets/pp.jpg",
                    img2: "assets/pp1.jpg",
                    img3: "assets/pp2.jpg",
                    pconnected: "387",
                    ptalking: "9",
                  ),
                  const FeedItems(
                    title: "💥 Let's talk about design thinking",
                    subtitle:
                        "Sharing our secrets and examples of  \n design thinking.",
                    img1: "assets/P1.jpg",
                    img2: "assets/P2.jpg",
                    img3: "assets/P3.jpg",
                    pconnected: "876",
                    ptalking: "3",
                  ),
                  const FeedItems(
                    title: "Everything goes digital",
                    subtitle:
                        "The percentage of workers permanently \n working from home is expected to double.",
                    img1: "assets/P5.jpg",
                    img2: "assets/P6.jpg",
                    img3: "assets/P7.jpg",
                    pconnected: "210",
                    ptalking: "6",
                  ),
                  const FeedItems(
                    title: "💥 Let's talk about design thinking",
                    subtitle:
                        "The percentage of workers permanently \n working from home is expected to double.",
                    img1: "assets/P8.jpg",
                    img2: "assets/P9.jpg",
                    img3: "assets/PP10.jpg",
                    pconnected: "387",
                    ptalking: "9",
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Bottombar(),
          )
        ],
      ),
    );
  }
}
