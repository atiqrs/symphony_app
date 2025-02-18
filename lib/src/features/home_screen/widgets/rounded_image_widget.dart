import 'package:flutter/material.dart';

import '../../../commons/resources/colors.dart';

class BorderedImageWidget extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color borderColor;
  final double borderWidth;
  final bool showBorder;

  const BorderedImageWidget({
    super.key,
    required this.imageUrl,
    required this.borderRadius,
    this.height,
    this.width,
    this.fit,
    this.borderColor = AppColors.liteGrayColor,
    this.borderWidth = 0.5,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.asset(
              imageUrl,
              height: height,
              width: width,
              fit: fit,
              // color: AppColors.borderBackgroundColor,
            ),
          ),

          /// Border Overlay
          if (showBorder)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(
                  color: borderColor,
                  width: borderWidth,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
