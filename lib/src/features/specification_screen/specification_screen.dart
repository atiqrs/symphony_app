import 'package:flutter/material.dart';

import '../../commons/resources/assets.dart';
import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../commons/resources/styles.dart';
import '../../commons/utils/custom_app_bar.dart';
import 'widgets/powered_by_widget.dart';
import 'widgets/specification_single_card_widget.dart';

class SpecificationScreen extends StatelessWidget {
  final androidVersion = 14;

  const SpecificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      appBar: CustomAppBar(
        title: Text(AppStrings.specification),
        titleTextStyle: AppStyles.white20W600TextStyle,
        backgroundColor: AppColors.blackBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.blackBackgroundColor,
          padding: EdgeInsets.symmetric(horizontal: AppDimens.spacing16, vertical: AppDimens.spacing24),
          child: Column(
            children: [
              poweredByWidget(androidVersion: androidVersion),
              SizedBox(height: AppDimens.spacing16),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconCpu,
                        category: AppStrings.processorText,
                        detailsData: AppStrings.processDetailsText,
                      ),
                    ),
                    SizedBox(width: AppDimens.spacing16),
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconStorage,
                        category: AppStrings.storageText,
                        detailsData: AppStrings.storageDetailsText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppDimens.spacing16),
              specificationSingleCardWidget(
                svgUrl: AppAssets.iconExtendableSquare,
                category: AppStrings.displayText,
                detailsData: AppStrings.displayDetailsText,
              ),
              SizedBox(height: AppDimens.spacing16),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconRam,
                        category: AppStrings.ramText,
                        categoryOnTap: () {},
                        detailsData: AppStrings.ramDetailsText,
                      ),
                    ),
                    SizedBox(width: AppDimens.spacing16),
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconSimCard,
                        category: AppStrings.simCardText,
                        detailsData: AppStrings.simCardDetailsText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppDimens.spacing16),
              specificationSingleCardWidget(
                svgUrl: AppAssets.iconCamera,
                category: AppStrings.cameraText,
                detailsData: AppStrings.cameraDetailsText,
              ),
              SizedBox(height: AppDimens.spacing16),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconCellularNetwork,
                        category: AppStrings.networkText,
                        detailsData: AppStrings.networkDetailsText,
                      ),
                    ),
                    SizedBox(width: AppDimens.spacing16),
                    Expanded(
                      child: specificationSingleCardWidget(
                        svgUrl: AppAssets.iconBattery,
                        category: AppStrings.batteryText,
                        detailsData: AppStrings.batteryDetailsText,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppDimens.spacing16),
              specificationSingleCardWidget(
                svgUrl: AppAssets.iconFingerprint,
                category: AppStrings.deviceSensorsText,
                detailsData: AppStrings.deviceSensorDetailsText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
