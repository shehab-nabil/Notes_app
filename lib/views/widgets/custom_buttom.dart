import 'package:flutter/material.dart';

class CustomCircularButtom extends StatelessWidget {
  CustomCircularButtom(
      {super.key,
      required this.label,
      this.width,
      this.height,
      this.backgroundColor = Colors.white,
      this.fontColor = Colors.white,
      this.radius = 10,
      required this.onTap});
  String? label;
  Color backgroundColor;
  double? height = 40;
  double? width = double.infinity;
  Color fontColor;
  double radius;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        width: width,
        height: height,
        child: Center(
            child: Text(
          '$label',
          style: TextStyle(
            color: fontColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
