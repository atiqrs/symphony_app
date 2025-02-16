import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../commons/resources/assets.dart';
import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../dev_utils/mock_data/mock_trending_list_data.dart';
import 'data/model/trending_model.dart';
import 'widgets/entertainment_widget.dart';
import 'widgets/need_help_card_widget.dart';
import 'widgets/rounded_image_widget.dart';
import 'widgets/trending_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.whiteBackgroundColor,
          padding: EdgeInsets.symmetric(horizontal: AppDimens.spacing16, vertical: AppDimens.spacing24),
          child: Column(
            children: [
              /// title and navigation bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.homeTitle,
                    style: TextStyle(
                        color: AppColors.blackTextColor, fontWeight: FontWeight.w700, fontSize: AppDimens.fontSize18),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: impl onclick of menu button to route
                    },
                    icon: SvgPicture.asset(
                      AppAssets.iconMenu,
                      colorFilter: ColorFilter.mode(AppColors.blackColor, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimens.spacing16),

              /// feature image specification
              BorderedImageWidget(
                imageUrl: AppAssets.imagePhoneSpec,
                height: AppDimens.height160,
                width: double.infinity,
                borderRadius: AppDimens.radius16,
                borderWidth: AppDimens.spacing1,
                fit: BoxFit.contain,
              ),
              SizedBox(height: AppDimens.spacing24),

              /// need help card & button
              NeedHelpCardWidget(
                widget: ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimens.radius8),
                  child: InkWell(
                    onTap: () {
                      // TODO: Handle tap event of check support button
                    },
                    child: Container(
                      width: AppDimens.height140,
                      height: AppDimens.height40,
                      color: AppColors.whiteColor,
                      alignment: Alignment.center,
                      child: Text(
                        AppStrings.checkSupportText,
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDimens.fontSize16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppDimens.spacing24),

              /// portrait list items
              TrendingItemsWidget(trendingModel: TrendingListModel(items: trendingItemList)),
              SizedBox(height: AppDimens.spacing24),

              /// entertainment section
              EntertainmentWidget(imageUrl: AppAssets.imageEntertainOne),
              SizedBox(height: AppDimens.spacing24),

              SizedBox(height: AppDimens.spacing100),
            ],
          ),
        ),
      ),
    );
  }
}
