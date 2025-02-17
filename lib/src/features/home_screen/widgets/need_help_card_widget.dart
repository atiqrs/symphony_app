import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commons/resources/assets.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../../../commons/resources/styles.dart';

class NeedHelpCardWidget extends StatelessWidget {
  final Widget widget;

  const NeedHelpCardWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppDimens.radius16),
      child: Stack(
        children: [
          Container(
            height: AppDimens.height128,
            width: double.infinity,
            color: AppColors.redColor,
            child: SvgPicture.asset(AppAssets.iconPattern, fit: BoxFit.fill),
          ),
          Positioned(
            top: AppDimens.position0,
            bottom: AppDimens.position0,
            left: AppDimens.position0,
            right: AppDimens.position0,
            child: Row(
              children: [
                SizedBox(width: AppDimens.spacing16),
                SvgPicture.asset(
                  AppAssets.iconHeadphone,
                  height: AppDimens.height44,
                  colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
                ),
                SizedBox(width: AppDimens.spacing16),
                Text(
                  AppStrings.needHelpText,
                  style: AppStyles.white16W600TextStyle,
                ),
                Spacer(),
                widget,
                SizedBox(width: AppDimens.spacing16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
