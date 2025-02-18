import 'package:flutter/cupertino.dart';

import '../../../commons/resources/assets.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../../../commons/resources/styles.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/widgets/common/color_round_card_widget.dart';

Widget poweredByWidget({required int androidVersion}) {
  return colorRoundCardWidget(
    height: AppDimens.height82,
    width: double.infinity,
    radius: AppDimens.radius16,
    backgroundColor: AppColors.cardBackgroundColor,
    overlayWidget: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimens.spacing16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.poweredByText, style: AppStyles.liteWhite12W500TextStyle),
                Text('${AppStrings.androidTmText} $androidVersion', style: AppStyles.green20W500TextStyle),
              ],
            ),
          ),
          Column(
            children: [
              Spacer(),
              Image.asset(AppAssets.imageAndroid, height: AppDimens.height48,width: AppDimens.width80),
            ],
          )
        ],
      ),
    ),
  );
}
