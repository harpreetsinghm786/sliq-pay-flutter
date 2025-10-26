import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_textStyles.dart';
import 'backButton.dart';

class rewardsAppBar extends StatelessWidget {
  const rewardsAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.pad_20,
        vertical: AppConstants.pad_10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.borderGrayPrimary.withOpacity(0.5),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          backButton(),
          Expanded(
            child: Text(
              AppStrings.rewardsAndReferralsTitle,
              style: AppTextStyles.heading,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
