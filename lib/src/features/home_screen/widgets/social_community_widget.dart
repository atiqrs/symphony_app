import 'package:flutter/material.dart';
import 'package:symphony_app/src/commons/resources/assets.dart';

import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import 'rounded_image_widget.dart';

class SocialCommunityWidget extends StatelessWidget {
  const SocialCommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: impl join social community route
      },
      child: Stack(
        children: [
          BorderedImageWidget(
            imageUrl: AppAssets.imageCommunityBackground,
            height: AppDimens.height128,
            width: double.infinity,
            borderRadius: AppDimens.radius16,
            fit: BoxFit.cover,
            showBorder: false,
          ),
          Positioned(
            left: AppDimens.position0,
            right: AppDimens.position0,
            top: AppDimens.position0,
            bottom: AppDimens.position0,
            child: Center(
              child: Text(
                AppStrings.joinSocialCommunityText,
                style: TextStyle(
                  fontSize: AppDimens.textSize20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.whiteTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
