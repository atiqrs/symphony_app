import 'package:flutter/material.dart';

import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../commons/resources/styles.dart';
import '../../commons/utils/custom_app_bar.dart';
import '../../commons/widgets/common/color_round_card_widget.dart';

class LsoQueryScreen extends StatelessWidget {
  const LsoQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      appBar: CustomAppBar(
        title: Text(AppStrings.lsoQuery),
        titleTextStyle: AppStyles.white20W600TextStyle,
        backgroundColor: AppColors.blackBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.blackBackgroundColor,
          padding: EdgeInsets.symmetric(vertical: AppDimens.spacing24, horizontal: AppDimens.spacing16),
          child: colorRoundCardWidget(
            width: double.infinity,
            radius: AppDimens.radius16,
            backgroundColor: AppColors.cardBackgroundColor,
            overlayWidget: Padding(
              padding: EdgeInsets.all(AppDimens.spacing16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.serviceTracking,
                    style: AppStyles.white18W700TextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppDimens.spacing16),
                  Text(
                    AppStrings.enterLSO,
                    style: AppStyles.gray16W500TextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
