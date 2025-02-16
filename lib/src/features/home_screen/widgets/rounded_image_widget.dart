import 'package:flutter/material.dart';
import 'package:symphony_app/src/commons/resources/colors.dart';

class BorderedImageWidget extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double borderWidth;

  const BorderedImageWidget({
    super.key,
    required this.imageUrl,
    required this.borderRadius,
    this.height,
    this.width,
    this.fit,
    this.borderWidth = 0.5,
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: AppColors.borderLightColor,
                width: borderWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
