import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_icons.dart';
import '../../../../../constants/app_textStyles.dart';

class RewardHistoryHeader extends StatelessWidget {
  const RewardHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: AppConstants.pad_20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.yourRewardsTitle, style: AppTextStyles.historyTitleText),
          Image.asset(
            AppIcons.filterAdd,
            height: AppConstants.icon_height,
          ),
        ],
      ),
    );
  }
}
