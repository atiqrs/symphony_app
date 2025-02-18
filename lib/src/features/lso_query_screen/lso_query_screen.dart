import 'package:flutter/material.dart';

import '../../commons/resources/colors.dart';
import '../../commons/resources/dimens.dart';
import '../../commons/resources/strings.dart';
import '../../commons/resources/styles.dart';
import '../../commons/utils/custom_app_bar.dart';
import '../../commons/widgets/common/color_round_card_widget.dart';
import '../../commons/widgets/common/rounded_text_button.dart';

class LsoQueryScreen extends StatefulWidget {
  const LsoQueryScreen({super.key});

  @override
  State<LsoQueryScreen> createState() => _LsoQueryScreenState();
}

class _LsoQueryScreenState extends State<LsoQueryScreen> {
  final FocusNode lsoFocusNode = FocusNode();
  final TextEditingController lsoController = TextEditingController();

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
                  SizedBox(height: AppDimens.spacing10),
                  TextFormField(
                    focusNode: lsoFocusNode,
                    controller: lsoController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: AppStrings.enterLSOHints,
                      hintStyle: AppStyles.gray14W500TextStyle,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderLightWhite02Color, width: AppDimens.width1_5),
                        borderRadius: BorderRadius.all(Radius.circular(AppDimens.radius16)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderLightWhite02Color, width: AppDimens.width2),
                        borderRadius: BorderRadius.all(Radius.circular(AppDimens.radius16)),
                      ),
                      contentPadding: EdgeInsets.all(AppDimens.spacing16),
                    ),
                    style: AppStyles.white14W500TextStyle,
                  ),
                  SizedBox(height: AppDimens.spacing24),
                  Row(
                    children: [
                      RoundedTextButton(
                        onPressed: () {},
                        style: CustomButtonStyle.redBig,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppDimens.spacing16, vertical: AppDimens.spacing12),
                          child: Text(
                            AppStrings.getInformation,
                            style: AppStyles.white16W500TextStyle,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
