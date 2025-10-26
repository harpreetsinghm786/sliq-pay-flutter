import 'package:flutter/material.dart';
import 'package:sliq_pay/constants/app_strings.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/app_textStyles.dart';
import '../../../utils/cut_corner_button.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopCutCornerClipper(cutSize: 20),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.pad_25,
          vertical: AppConstants.pad_25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.inviteFriendsTitle, style: AppTextStyles.heading),
            Text(AppStrings.viewAllText, style: AppTextStyles.hrefText),
          ],
        ),
      ),
    );
  }
}
