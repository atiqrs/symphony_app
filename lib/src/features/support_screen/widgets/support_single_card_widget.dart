import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/styles.dart';
import '../../../commons/widgets/common/color_round_card_widget.dart';

Widget supportSingleCardWidget({
  required String iconUrl,
  required String title,
  VoidCallback? onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: colorRoundCardWidget(
      height: AppDimens.height118,
      width: double.infinity,
      radius: AppDimens.radius16,
      backgroundColor: AppColors.cardBackgroundColor,
      overlayWidget: Padding(
        padding: EdgeInsets.all(AppDimens.spacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconUrl,
              height: AppDimens.height32,
              width: AppDimens.width32,
              // color: AppColors.orangeColor,
            ),
            Spacer(),
            Text(
              title,
              style: AppStyles.white16W500TextStyle,
              maxLines: AppDimens.range2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}
