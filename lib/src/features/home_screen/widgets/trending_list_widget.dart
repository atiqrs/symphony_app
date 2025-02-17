import 'package:flutter/material.dart';

import '../../../commons/resources/colors.dart';
import '../../../commons/resources/dimens.dart';
import '../../../commons/resources/strings.dart';
import '../data/model/trending_model.dart';
import 'portrait_trending_card_widget.dart';

class TrendingItemsWidget extends StatelessWidget {
  final TrendingListModel trendingModel;

  const TrendingItemsWidget({super.key, required this.trendingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.trendingItemsText,
          style: TextStyle(
            fontSize: AppDimens.fontSize20,
            fontWeight: FontWeight.bold,
            color: AppColors.blackTextColor,
          ),
        ),
        SizedBox(height: AppDimens.spacing16),
        Container(
          height: AppDimens.height126,
          color: AppColors.whiteColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trendingModel.items.length,
            itemBuilder: (context, index) {
              return portraitTrendingCard(item: trendingModel.items[index]);
            },
          ),
        ),
      ],
    );
  }
}
