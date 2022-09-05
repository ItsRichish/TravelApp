import 'package:flutter/material.dart';
import 'package:flutter_travel_app/misc/my_colors.dart';
import 'package:flutter_travel_app/widgets/app_text.dart';

class MyButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  MyButton({Key? key, this.isResponsive = false, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.mainColor,
        ),
        child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    )
                  : Container(),
              Image.asset("assets/img/button-one.png")
            ]),
      ),
    );
  }
}
