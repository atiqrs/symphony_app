import 'package:flutter/material.dart';

import '../../resources/styles.dart';

enum CustomButtonStyle {
  whiteBig,
  redBig,
  redMedium,
  redSmall,
}

extension GetCustomButtonStyles on CustomButtonStyle {
  ButtonStyle getButtonStyle(BuildContext context) {
    switch (this) {
      case CustomButtonStyle.redBig:
        return AppStyles.redBigButtonStyle(AppStyles.white16W500TextStyle);

      case CustomButtonStyle.whiteBig:
        return AppStyles.whiteBigButtonStyle(AppStyles.white16W500TextStyle);

      default:
        return AppStyles.redBigButtonStyle(AppStyles.white20W600TextStyle);
    }
  }
}

class RoundedTextButton extends StatelessWidget {
  final GestureTapCallback? onPressed;
  final Widget child;
  final CustomButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final bool enabled;

  const RoundedTextButton({
    super.key,
    required this.onPressed,
    this.style = CustomButtonStyle.redBig,
    this.padding,
    required this.child,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Opacity(
        opacity: enabled ? 1 : 0.4,
        child: TextButton(
          onPressed: enabled ? onPressed : () {},
          style: style.getButtonStyle(context),
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
