import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_textStyles.dart';

class RewardHistoryHeader extends StatelessWidget {
  const RewardHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: AppConstants.pad_15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(AppStrings.yourRewardsTitle, style: AppTextStyles.historyTitleText),
        ],
      ),
    );
  }
}
