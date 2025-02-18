import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (isEmpty) {
      return ImageType.empty;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown, empty }
