import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_strings.dart';
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
        padding: EdgeInsets.only(left: AppConstants.pad_25,right: AppConstants.pad_25,top: AppConstants.pad_20,
        bottom: AppConstants.pad_10),
        // padding: const EdgeInsets.symmetric(
        //   horizontal: AppConstants.pad_25,
        //   vertical: AppConstants.pad_15,
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.inviteFriendsTitle, style: AppTextStyles.heading),
          ],
        ),
      ),
    );
  }
}
