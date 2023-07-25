import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCircularButtom extends StatelessWidget {
  const CustomCircularButtom(
      {super.key,
      required this.label,
      this.width = double.infinity,
      this.height = 40,
      this.backgroundColor = Colors.white,
      this.fontColor = Colors.white,
      this.radius = 10,
      required this.onTap,
      this.isLoading = false});
  final String label;
  final Color backgroundColor;
  final double height;
  final double width;
  final Color fontColor;
  final double radius;
  final void Function() onTap;
  final bool isLoading;

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
        child: isLoading
            ? const Center(
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
              )
            : Center(
                child: Text(
                label,
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
