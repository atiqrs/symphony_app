import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_router.dart';
import '../../commons/resources/styles.dart';
import '../../commons/resources/assets.dart';
import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../commons/widgets/common/rounded_text_button.dart';
import '../../dev_utils/mock_data/mock_gaming_list_data.dart';
import '../../dev_utils/mock_data/mock_trending_list_data.dart';
import '../../dev_utils/mock_data/mock_warranty_data.dart';
import 'data/model/gaming_model.dart';
import 'data/model/trending_model.dart';
import 'widgets/e_warranty_card_widget.dart';
import 'widgets/entertainment_widget.dart';
import 'widgets/game_list_widget.dart';
import 'widgets/need_help_card_widget.dart';
import 'widgets/rounded_image_widget.dart';
import 'widgets/social_community_widget.dart';
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
      backgroundColor: AppColors.whiteBackgroundColor,
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
                    style: AppStyles.black18W700TextStyle,
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
                fit: BoxFit.fill,
              ),
              SizedBox(height: AppDimens.spacing24),

              /// need help card & button
              NeedHelpCardWidget(
                widget: Column(
                  children: [
                    Spacer(),
                    RoundedTextButton(
                      onPressed: () => Navigator.pushNamed(context, AppRouter.supportScreen),
                      style: CustomButtonStyle.whiteBig,
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppDimens.spacing16, vertical: AppDimens.spacing12),
                        child: Text(
                          AppStrings.checkSupportText,
                          style: AppStyles.black16W500TextStyle,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: AppDimens.spacing24),

              /// portrait list items
              TrendingItemsWidget(trendingModel: TrendingListModel(items: trendingItemList)),
              SizedBox(height: AppDimens.spacing24),

              /// entertainment section
              EntertainmentWidget(imageUrl: AppAssets.imageEntertainOne),
              SizedBox(height: AppDimens.spacing24),

              /// e-warranty card
              EWarrantyCardWidget(model: warrantyMockModel),
              SizedBox(height: AppDimens.spacing24),

              /// gaming portrait card list items
              GamingItemsWidget(gameListModel: GamingListModel(items: gamingListMockModel)),
              SizedBox(height: AppDimens.spacing24),

              /// join social community card
              SocialCommunityWidget(),
              SizedBox(height: AppDimens.spacing100),
            ],
          ),
        ),
      ),
    );
  }
}
