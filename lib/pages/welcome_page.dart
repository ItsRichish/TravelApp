import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_travel_app/misc/my_colors.dart';
import 'package:flutter_travel_app/widgets/app_text.dart';
import 'package:flutter_travel_app/widgets/app_text_large.dart';
import 'package:flutter_travel_app/widgets/my_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-first.png",
    "welcome-second.png",
    "welcome-third.png",
    "welcome-fourth.png",
    "welcome-fifth.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: ((_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/img/" + images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 20, top: 150, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextLarge(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: AppText(
                            size: 14,
                            color: Colors.black54,
                            text:
                                "Mountain hikes give you an incredible sence of freedom alog with endurance tests."),
                      ),
                      SizedBox(height: 40),
                      MyButton(width: 120)
                    ],
                  ),
                  Column(
                    children: List.generate(5, (indexDots) {
                      return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? MyColors.mainColor
                                : MyColors.mainColor.withOpacity(0.3),
                          ));
                    }),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
