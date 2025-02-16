import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:symphony_app/src/commons/resources/strings.dart';

import '../../commons/resources/assets.dart';
import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import 'widgets/rounded_image_widget.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.homeTitle,
                    style: TextStyle(
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: AppDimens.fontSize18,
                    ),
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
              BorderedImageWidget(
                imageUrl: AppAssets.imagePhoneSpec,
                height: AppDimens.height160,
                width: double.infinity,
                borderRadius: AppDimens.radius16,
                borderWidth: AppDimens.spacing1,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
