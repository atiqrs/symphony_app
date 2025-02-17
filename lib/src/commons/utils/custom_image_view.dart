import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symphony_app/src/commons/resources/constants.dart';

class CustomImageView extends StatelessWidget {
  /// Required image path
  final String? imagePath;
  final double? height, width;
  final Color? color;
  final BoxFit fit;
  final Widget? placeHolder;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? radius;
  final BoxBorder? border;

  /// CustomImageView - A versatile widget for displaying images with support for different formats.
  const CustomImageView({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.cover,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = _buildImageView();

    if (radius != null) {
      imageWidget = ClipRRect(
        borderRadius: radius!,
        child: imageWidget,
      );
    }

    if (border != null) {
      imageWidget = Container(
        decoration: BoxDecoration(border: border, borderRadius: radius),
        child: imageWidget,
      );
    }

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: radius ?? BorderRadius.zero,
        onTap: onTap,
        child: alignment != null ? Align(alignment: alignment!, child: imageWidget) : imageWidget,
      ),
    );
  }

  Widget _buildImageView() {
    if (imagePath == null || imagePath!.isEmpty) {
      return _buildPlaceholder();
    }

    switch (imagePath!.imageType) {
      case ImageType.svg:
        return SvgPicture.asset(
          imagePath!,
          height: height,
          width: width,
          fit: fit,
          colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      case ImageType.file:
        return Image.file(File(imagePath!), height: height, width: width, fit: fit, color: color);
      case ImageType.network:
        return CachedNetworkImage(
          imageUrl: imagePath!,
          height: height,
          width: width,
          fit: fit,
          color: color,
          placeholder: (_, __) => _buildPlaceholder(),
          errorWidget: (_, __, ___) => _buildPlaceholder(),
        );
      case ImageType.png:
      case ImageType.unknown:
      default:
        return Image.asset(imagePath!, height: height, width: width, fit: fit, color: color);
    }
  }

  Widget _buildPlaceholder() {
    return Container(
      height: height,
      width: width,
      color: Colors.white.withOpacity(0.1),
      child: Image.asset(
        AppConstants.placeholderImage,
        height: height,
        width: width,
        fit: fit,
        color: Colors.black.withOpacity(0.3),
      ),
    );
  }
}

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) return ImageType.network;
    if (endsWith('.svg')) return ImageType.svg;
    if (startsWith('file://')) return ImageType.file;
    if (isEmpty) return ImageType.empty;
    return ImageType.png;
  }
}

enum ImageType { svg, png, network, file, unknown, empty }
