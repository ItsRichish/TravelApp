import 'package:flutter/cupertino.dart';
import 'package:flutter_travel_app/misc/my_colors.dart';

class MyButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  MyButton({Key? key, this.isResponsive = false, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.mainColor,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/img/button-one.png")]),
    );
  }
}
