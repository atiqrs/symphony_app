import 'package:flutter/material.dart';

import '../../../commons/resources/styles.dart';
import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../data/model/trending_model.dart';

Widget portraitTrendingCard({required TrendingItemModel item}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(AppDimens.radius10),
    child: Row(
      children: [
        Container(
          height: AppDimens.height126,
          width: AppDimens.width104,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(AppDimens.radius10),
            border: Border.all(color: AppColors.lowLiteWhite100Color, width: AppDimens.spacing1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: AppDimens.spacing10),
              Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.blackSecondary14W600TextStyle,
              ),
              SizedBox(height: AppDimens.spacing10),
              Expanded(child: Image.asset(item.imageUrl, width: double.infinity, fit: BoxFit.fill)),
            ],
          ),
        ),
        SizedBox(width: AppDimens.spacing14),
      ],
    ),
  );
}
