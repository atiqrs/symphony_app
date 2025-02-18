import 'package:flutter/cupertino.dart';

Widget colorRoundCardWidget({
  double? height,
  required double width,
  required double radius,
  required Color backgroundColor,
  required Widget overlayWidget,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: overlayWidget,
  );
}
