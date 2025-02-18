import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// App Colors
  static const blackBackgroundColor = Color.fromRGBO(0, 0, 0, 1);
  static const whiteBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static const cardBackgroundColor = Color.fromRGBO(24, 24, 24, 1);
  static const cardSecondaryBackgroundColor = Color.fromRGBO(31, 32, 34, 1);
  static const borderColor = Color.fromRGBO(45, 45, 46, 1);
  static const borderLightColor = Color.fromRGBO(113, 115, 117, 1);
  static const borderWhiteColor = Color.fromRGBO(232, 238, 246, 1);
  static const borderLightWhite02Color = Color.fromRGBO(231, 235, 242, 0.2);

  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const grayColor = Color.fromRGBO(139, 139, 139, 1);
  static const redColor = Color.fromRGBO(255, 44, 44, 1);
  static const glazeRedColor = Color.fromRGBO(255, 0, 43, 1);
  static const redDimColor = Color.fromRGBO(255, 44, 44, .15);
  static const orangeColor = Color.fromRGBO(255, 105, 0, 1);

  static Color selectedIconRedColor = Color.fromRGBO(255, 0, 43, 1);
  static const unselectedIconColor = Color.fromRGBO(255, 255, 255, 0.4);

  /// Text Colors
  static const blackTextColor = Color.fromRGBO(0, 0, 0, 1);
  static const blackSecondaryTextColor = Color.fromRGBO(26, 26, 26, 1);
  static const whiteTextColor = Color.fromRGBO(255, 255, 255, 1);
  static const liteWhiteTextColor = Color.fromRGBO(255, 255, 255, .8);
  static const halfWhiteTextColor = Color.fromRGBO(255, 255, 255, .5);
  static const selectedTextColor = Color.fromRGBO(255, 255, 255, 1);
  static Color unselectedTextColor = Color.fromRGBO(255, 255, 255, 0.4);
  static Color lightWhite06TextColor = Color.fromRGBO(255, 255, 255, 0.6);
  static const grayTextColor = Color.fromRGBO(139, 139, 139, 1);
  static Color greenTextColor = Color.fromRGBO(52, 168, 83, 1);

  static const testBackground = Color.fromRGBO(36, 122, 18, 1.0);

  // color filters
  static showColorFilter(Color color) => ColorFilter.mode(color, BlendMode.srcIn);
}
