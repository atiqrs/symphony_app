import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../commons/resources/assets.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../data/model/warranty_data_model.dart';

class EWarrantyCardWidget extends StatelessWidget {
  final WarrantyDataModel model;

  const EWarrantyCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.eWarrantyCardItemsText,
          style:
              TextStyle(fontSize: AppDimens.fontSize20, fontWeight: FontWeight.bold, color: AppColors.blackTextColor),
        ),
        SizedBox(height: AppDimens.spacing16),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.radius12),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: AppDimens.spacing12, horizontal: AppDimens.spacing16),
            height: AppDimens.height92,
            width: double.infinity,
            color: AppColors.cardSecondaryBackgroundColor,
            child: Row(
              children: [
                /// mobile image + circle camera box + device model name
                Stack(
                  children: [
                    SvgPicture.asset(AppAssets.iconMobile),
                    Positioned(
                      left: AppDimens.position0,
                      right: AppDimens.position0,
                      top: AppDimens.position2,
                      child: Center(
                        child: Container(
                          height: AppDimens.size3,
                          width: AppDimens.size3,
                          decoration: BoxDecoration(
                            color: AppColors.cardSecondaryBackgroundColor,
                            borderRadius: BorderRadius.circular(AppDimens.radius10),
                            border:
                                Border.all(color: AppColors.cardSecondaryBackgroundColor, width: AppDimens.spacing1),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: AppDimens.position0,
                      right: AppDimens.position0,
                      top: AppDimens.position0,
                      bottom: AppDimens.position0,
                      child: Center(
                        child: Text(
                          model.deviceModel,
                          style: TextStyle(
                            fontSize: AppDimens.fontSize8,
                            fontWeight: FontWeight.w800,
                            color: AppColors.whiteTextColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: AppDimens.spacing16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.mobileModel,
                      style: TextStyle(
                          fontSize: AppDimens.fontSize16, fontWeight: FontWeight.w700, color: AppColors.whiteTextColor),
                    ),
                    Text(
                      AppStrings.validForDaysText(model.remainingDays),
                      style: TextStyle(fontSize: AppDimens.fontSize12, color: AppColors.grayTextColor),
                    ),
                    Text(
                      AppStrings.expiryDateText + model.expiryDate,
                      style: TextStyle(fontSize: AppDimens.fontSize12, color: AppColors.grayTextColor),
                    ),
                  ],
                ),
                Spacer(),

                /// go to next arrow button
                IconButton(
                  onPressed: () {
                    // TODO: go to e-warranty next page implementation
                  },
                  icon: Center(
                    child: SvgPicture.asset(AppAssets.iconArrowRightBack),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
