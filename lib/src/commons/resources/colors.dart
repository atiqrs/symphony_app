import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// App Colors
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const liteBlackFirstColor = Color.fromRGBO(24, 24, 24, 1);
  static const liteBlackSecondColor = Color.fromRGBO(26, 26, 26, 1);
  static const liteBlackThirdColor = Color.fromRGBO(31, 32, 34, 1);
  static const lowLiteBlackColor = Color.fromRGBO(45, 45, 46, 1);

  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const liteWhite80Color = Color.fromRGBO(255, 255, 255, 0.8);
  static const liteWhite60Color = Color.fromRGBO(255, 255, 255, 0.6);
  static const liteWhite50Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const liteWhite40Color = Color.fromRGBO(255, 255, 255, 0.4);
  static const lowLiteWhite100Color = Color.fromRGBO(232, 238, 246, 1);
  static const lowLiteWhite20Color = Color.fromRGBO(231, 235, 242, 0.2);

  static const grayColor = Color.fromRGBO(139, 139, 139, 1);
  static const liteGrayColor = Color.fromRGBO(113, 115, 117, 1);

  static const redColor = Color.fromRGBO(255, 44, 44, 1);
  static const liteRed15Color = Color.fromRGBO(255, 44, 44, .15);
  static const glazeRedColor = Color.fromRGBO(255, 0, 43, 1);

  static const orangeColor = Color.fromRGBO(255, 105, 0, 1);

  static const greenColor = Color.fromRGBO(52, 168, 83, 1);

  /// color filters
  static showColorFilter(Color color) => ColorFilter.mode(color, BlendMode.srcIn);
}
