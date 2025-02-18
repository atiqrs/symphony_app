import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commons/resources/assets.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/styles.dart';
import '../../../commons/widgets/common/color_round_card_widget.dart';

Widget specificationSingleCardWidget({
  required String svgUrl,
  required String category,
  required String detailsData,
  VoidCallback? categoryOnTap,
}) {
  return colorRoundCardWidget(
    width: double.infinity,
    radius: AppDimens.radius16,
    backgroundColor: AppColors.liteBlackFirstColor,
    overlayWidget: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.spacing16, vertical: AppDimens.spacing24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svgUrl,
            height: AppDimens.height32,
            width: AppDimens.width32,
            // color: AppColors.orangeColor,
          ),
          SizedBox(height: AppDimens.spacing16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(category, style: AppStyles.halfWhite12W500TextStyle),
              if (categoryOnTap != null) SizedBox(width: AppDimens.spacing6),
              if (categoryOnTap != null)
                InkWell(
                  onTap: categoryOnTap,
                  child: SvgPicture.asset(
                    AppAssets.iconArrowRightBack,
                    height: AppDimens.height8,
                    width: AppDimens.width4,
                    colorFilter: AppColors.showColorFilter(AppColors.redColor),
                  ),
                ),
            ],
          ),
          SizedBox(height: AppDimens.spacing12),
          Text(
            detailsData,
            style: AppStyles.white14W500TextStyle,
            maxLines: AppDimens.range3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
