import 'package:flutter/material.dart';

import '../../app_router.dart';
import '../../commons/resources/assets.dart';
import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../commons/resources/styles.dart';
import '../../commons/utils/custom_app_bar.dart';
import 'widgets/support_single_card_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      appBar: CustomAppBar(
        title: Text(AppStrings.checkSupport),
        titleTextStyle: AppStyles.white20W600TextStyle,
        backgroundColor: AppColors.blackBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.blackBackgroundColor,
          padding: EdgeInsets.all(AppDimens.spacing16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconCustomerSupport,
                      title: AppStrings.hotline,
                    ),
                  ),
                  SizedBox(width: AppDimens.spacing16),
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconPowerService,
                      title: AppStrings.serviceCenter,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimens.spacing16),
              Row(
                children: [
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconCourtLow,
                      title: AppStrings.lsoQuery,
                    ),
                  ),
                  SizedBox(width: AppDimens.spacing16),
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconComment,
                      title: AppStrings.feedback,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimens.spacing16),
              Row(
                children: [
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconList,
                      title: AppStrings.specification,
                      onPressed: () => Navigator.pushNamed(context, AppRouter.specificationScreen),
                    ),
                  ),
                  SizedBox(width: AppDimens.spacing16),
                  Expanded(
                    child: supportSingleCardWidget(
                      iconUrl: AppAssets.iconAppointment,
                      title: AppStrings.bookAnAppointment,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimens.spacing16),
            ],
          ),
        ),
      ),
    );
  }
}
