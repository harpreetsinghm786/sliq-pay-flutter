import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_textStyles.dart';

class ReferralHeader extends StatelessWidget {
  const ReferralHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstants.pad_15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(AppStrings.yourReferralsTitle, style: AppTextStyles.historyTitleText),
        ],
      ),
    );
  }
}
