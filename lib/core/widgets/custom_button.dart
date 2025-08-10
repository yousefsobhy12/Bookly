import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.title,
    this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final String title;
  BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(vertical: 12),
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadiusGeometry.circular(16),
      ),
      child: Text(title, style: Styles.bold20.copyWith(color: textColor)),
    );
  }
}
