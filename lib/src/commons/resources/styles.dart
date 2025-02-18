import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

abstract class AppStyles {
  /// text sizes
  static const textSize8 = 8.0;
  static const textSize10 = 10.0;
  static const textSize12 = 12.0;
  static const textSize14 = 14.0;
  static const textSize16 = 16.0;
  static const textSize18 = 18.0;
  static const textSize20 = 20.0;
  static const textSize22 = 22.0;
  static const textSize24 = 24.0;
  static const textSize28 = 28.0;
  static const textSize32 = 32.0;
  static const textSize36 = 36.0;
  static const textSize40 = 40.0;
  static const textSize48 = 48.0;

  /// font families
  static const fontName = 'Font-Name';

  static TextStyle gray12TextStyle = TextStyle(
    color: AppColors.lightWhite06TextColor,
    fontSize: textSize12,
  );

  static TextStyle gray14W500TextStyle = TextStyle(
    color: AppColors.grayTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize14,
  );

  static TextStyle gray16W500TextStyle = TextStyle(
    color: AppColors.grayTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize16,
  );

  static TextStyle green20W500TextStyle = TextStyle(
    color: AppColors.greenTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize20,
  );

  static TextStyle liteWhite12W500TextStyle = TextStyle(
    color: AppColors.liteWhiteTextColor,
    fontSize: textSize12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle halfWhite12W500TextStyle = TextStyle(
    color: AppColors.halfWhiteTextColor,
    fontSize: textSize12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white12W700TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontSize: textSize12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle white14W500TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontSize: textSize14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle white16W500TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize16,
  );

  static TextStyle white18W700TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontWeight: FontWeight.w700,
    fontSize: textSize18,
  );

  static TextStyle white20W600TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontWeight: FontWeight.w600,
    fontSize: textSize20,
  );

  static TextStyle white16W600TextStyle = TextStyle(
    color: AppColors.whiteTextColor,
    fontWeight: FontWeight.w600,
    fontSize: textSize16,
  );

  static TextStyle white8W800TextStyle = TextStyle(
    fontSize: textSize8,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteTextColor,
  );

  static TextStyle black20BoldTextStyle = TextStyle(
    fontSize: textSize20,
    fontWeight: FontWeight.bold,
    color: AppColors.blackTextColor,
  );

  static TextStyle red14W700TextStyle = TextStyle(
    fontSize: textSize14,
    fontWeight: FontWeight.w700,
    color: AppColors.redColor,
  );

  static TextStyle black18W700TextStyle = TextStyle(
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.w700,
    fontSize: textSize18,
  );

  static TextStyle black16W500TextStyle = TextStyle(
    color: AppColors.blackTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize16,
  );

  static TextStyle blackSecondary14W600TextStyle = TextStyle(
    color: AppColors.blackSecondaryTextColor,
    fontSize: textSize14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle selectedBottomNavigatorTextStyle = TextStyle(
    color: AppColors.selectedTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize14,
  );

  static TextStyle unselectedBottomNavigatorTextStyle = TextStyle(
    color: AppColors.unselectedTextColor,
    fontWeight: FontWeight.w500,
    fontSize: textSize14,
  );

  /// button styles
  static ButtonStyle redBigButtonStyle(TextStyle style) => TextButton.styleFrom(
        foregroundColor: AppColors.whiteColor,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: AppColors.glazeRedColor,
        textStyle: style,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.radius8),
        ),
      );

  /// input borders
  static OutlineInputBorder transparentInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
