import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commons/resources/assets.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../../../commons/resources/styles.dart';
import '../data/model/gaming_model.dart';
import 'rounded_image_widget.dart';

class GamingItemsWidget extends StatelessWidget {
  final GamingListModel gameListModel;

  const GamingItemsWidget({super.key, required this.gameListModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.gameText,
              style: AppStyles.black20BoldTextStyle,
            ),
            IconButton(
              onPressed: () {
                // TODO: impl onclick of see more button to route
              },
              icon: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.seeMoreText,
                    style: AppStyles.red14W700TextStyle,
                  ),
                  SizedBox(width: AppDimens.spacing8),
                  SvgPicture.asset(
                    AppAssets.iconArrowRightBack,
                    height: AppDimens.height11,
                    width: AppDimens.width12,
                    colorFilter: AppColors.showColorFilter(AppColors.redColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: AppDimens.spacing16),
        Container(
          height: AppDimens.height126,
          color: AppColors.whiteColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: gameListModel.items.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(
                    height: AppDimens.height126,
                    width: AppDimens.width104,
                    child: BorderedImageWidget(
                      imageUrl: gameListModel.items[index].imageUrl,
                      height: AppDimens.height128,
                      width: AppDimens.width104,
                      borderRadius: AppDimens.radius10,
                      fit: BoxFit.cover,
                      borderWidth: AppDimens.width2,
                      borderColor: AppColors.lowLiteWhite100Color,
                    ),
                  ),
                  SizedBox(width: AppDimens.spacing14),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
