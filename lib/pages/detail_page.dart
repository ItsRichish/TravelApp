import 'package:flutter/material.dart';
import 'package:flutter_travel_app/misc/my_colors.dart';
import 'package:flutter_travel_app/widgets/app_bottons.dart';
import 'package:flutter_travel_app/widgets/app_text.dart';
import 'package:flutter_travel_app/widgets/app_text_large.dart';
import 'package:flutter_travel_app/widgets/my_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 10,
                top: 30,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.more_horiz),
                    // )
                  ],
                )),
            Positioned(
              top: 310,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppTextLarge(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8)),
                        AppTextLarge(text: "\$ 250", color: MyColors.mainColor)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: MyColors.mainColor),
                        SizedBox(width: 5),
                        AppText(
                            text: "USA, California", color: MyColors.textColor1)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? MyColors.startColor
                                    : MyColors.textColor2);
                          }),
                        ),
                        SizedBox(width: 10),
                        AppText(text: "(4.0)", color: MyColors.textColor2),
                      ],
                    ),
                    SizedBox(height: 25),
                    AppTextLarge(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    SizedBox(height: 5),
                    AppText(
                        text: "Number of people in your group",
                        color: MyColors.mainTextColor),
                    SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: AppButton(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              bgColor: selectedIndex == index
                                  ? Colors.black
                                  : MyColors.buttonBackgroundColor,
                              size: 60,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : MyColors.buttonBackgroundColor,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    AppTextLarge(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    SizedBox(height: 10),
                    AppText(
                      text:
                          "You must go for travel. Travelling helps get rid of pressure. Go to the mountain to the see the nature",
                      color: MyColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButton(
                    size: 60,
                    color: MyColors.textColor2,
                    bgColor: Colors.white,
                    borderColor: MyColors.textColor2,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  MyButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
