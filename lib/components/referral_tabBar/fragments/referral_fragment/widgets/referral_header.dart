import 'package:flutter/material.dart';
import 'package:sliq_pay/constants/app_icons.dart';
import 'package:sliq_pay/constants/app_strings.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_textStyles.dart';

class ReferralHeader extends StatelessWidget {
  const ReferralHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstants.pad_20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.yourReferralsTitle, style: AppTextStyles.historyTitleText),
          Image.asset(
            AppIcons.filterAdd,
            height: AppConstants.icon_height,
          ),
        ],
      ),
    );
  }
}
