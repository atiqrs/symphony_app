import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/assets.dart';
import '../resources/colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;
  final Color? backgroundColor;
  final Color? backIconColor;
  final TextStyle? titleTextStyle;

  final VoidCallback? onBackButtonPressed;
  final bool backButtonVisible;
  final bool centerTitle = false;

  final VoidCallback? onCloseModule;
  final double height;
  final double? toolbarHeight;

  const CustomAppBar({
    super.key,
    this.title,
    this.backgroundColor,
    this.backIconColor = AppColors.redColor,
    this.titleTextStyle,
    this.onBackButtonPressed,
    this.onCloseModule,
    this.height = kToolbarHeight,
    this.toolbarHeight,
    this.backButtonVisible = true,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _onBackPressed();
        return false;
      },
      child: AppBar(
        backgroundColor: widget.backgroundColor,
        title: widget.title,
        centerTitle: widget.centerTitle,
        titleTextStyle: widget.titleTextStyle,
        titleSpacing: 0,
        toolbarHeight: widget.toolbarHeight,
        leading: widget.backButtonVisible
            ? IconButton(
                icon: SvgPicture.asset(
                  AppAssets.iconArrowBack,
                  colorFilter: AppColors.showColorFilter(widget.backIconColor!),
                ),
                onPressed: _onBackPressed,
              )
            : null,
        automaticallyImplyLeading: widget.backButtonVisible,
      ),
    );
  }

  void _onBackPressed() {
    if (widget.onBackButtonPressed != null) {
      widget.onBackButtonPressed?.call();
      return;
    }
    final canPop = (ModalRoute.of(context)?.canPop ?? false);
    return (canPop || widget.onCloseModule == null) ? Navigator.of(context).pop() : widget.onCloseModule?.call();
  }
}
