import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_size.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double fontSize;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry textPadding;
  final BoxDecoration decoration;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = AppColor.primerColor, // Assuming you have defined this color
    this.textColor = Colors.white,
    this.borderRadius = AppSize.s_10, // Assuming you have defined this size
    this.fontSize = AppSize.s_15, // Assuming you have defined this size
    this.textPadding=const EdgeInsets.symmetric(vertical: AppSize.s_15),
    this.padding = const EdgeInsets.all(  AppSize.s_15), // Assuming you have defined this size
    this.decoration = const BoxDecoration(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      child: Padding(
        padding: textPadding,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}


