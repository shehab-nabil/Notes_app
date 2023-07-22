import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key,
      this.hintText,
      this.cursorColor,
      this.hintColor,
      this.label,
      this.labelColor,
      this.prefixIcon,
      this.prefixIconColor,
      required this.borderEnableColor,
      required this.borderFocuseColor,
      required this.borderRadius,
      this.onChange,
      this.isHidden = false,
      this.maxLines = 1});

  final int maxLines;

  String? hintText;
  Color? hintColor;

  String? label;
  Color? labelColor;

  IconData? prefixIcon;
  Color? prefixIconColor;

  Function(String)? onChange;

  Color borderEnableColor;
  Color borderFocuseColor;
  double borderRadius;

  Color? cursorColor;

  bool? isHidden;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: cursorColor,
      obscureText: isHidden!,
      validator: (data) {
        if (data!.isEmpty) {
          return "can't be empty";
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),
        label: label == null ? null : Text('$label'),
        labelStyle: TextStyle(color: labelColor),
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: prefixIconColor,
        enabledBorder: buildEnableBorder(),
        border: buildEnableBorder(),
        focusedBorder: buildFocuseBorder(),
      ),
    );
  }

  OutlineInputBorder buildEnableBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: borderEnableColor,
      ),
    );
  }

  OutlineInputBorder buildFocuseBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: borderFocuseColor,
      ),
    );
  }
}
