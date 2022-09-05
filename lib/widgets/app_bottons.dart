import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/misc/my_colors.dart';
import 'package:flutter_travel_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color bgColor;
  String? text;
  IconData? icon;
  final Color borderColor;
  bool? isIcon;
  double size;
  AppButton(
      {Key? key,
      this.isIcon = false,
      this.text = "Hi",
      this.icon,
      required this.size,
      required this.color,
      required this.bgColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: bgColor),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Icon(icon, color: color),
    );
  }
}
