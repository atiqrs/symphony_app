import 'package:flutter/material.dart';

import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../../../commons/resources/styles.dart';
import 'rounded_image_widget.dart';

class EntertainmentWidget extends StatelessWidget {
  final String imageUrl;

  const EntertainmentWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.entertainmentItemsText,
          style: AppStyles.black20BoldTextStyle,
        ),
        SizedBox(height: AppDimens.spacing16),
        BorderedImageWidget(
          imageUrl: imageUrl,
          height: AppDimens.height128,
          width: double.infinity,
          borderRadius: AppDimens.radius16,
          fit: BoxFit.fill,
          showBorder: false,
        ),
      ],
    );
  }
}
