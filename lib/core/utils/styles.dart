import 'package:flutter/widgets.dart';

abstract class Styles {
  // Font size 14
  static const regular14 = TextStyle(fontSize: 14);
  static const medium14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  // Font size 16
  static const regular16 = TextStyle(fontSize: 16);
  static const medium16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  // Font size 18
  static const bold18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const regular18 = TextStyle(fontSize: 18);

  // Font size 20
  static const regular20 = TextStyle(fontSize: 20);
  static const bold20 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}
