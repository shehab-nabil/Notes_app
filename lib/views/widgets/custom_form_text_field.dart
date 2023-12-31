import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
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
      this.maxLines = 1,
      this.onSaved,
      this.initialValue});

  final int maxLines;

  final String? hintText;
  final Color? hintColor;

  final String? label;
  final Color? labelColor;

  final IconData? prefixIcon;
  final Color? prefixIconColor;

  final void Function(String)? onChange;
  final void Function(String?)? onSaved;

  final Color borderEnableColor;
  final Color borderFocuseColor;
  final double borderRadius;

  final Color? cursorColor;
  final String? initialValue;
  final bool? isHidden;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines,
      cursorColor: cursorColor,
      obscureText: isHidden!,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return "can't be empty";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
