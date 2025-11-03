import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_constants.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../utils/cut_corner_button.dart';
import '../../rewards_and_referrals/rewards_and_referrals.dart';
import '../../success_screen/success_screen.dart';

class topActionButtons extends StatelessWidget {
  const topActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ActionButton(
          icon: AppIcons.back,
          cuts: true,
          onTap: () => Get.to(() => SuccessScreen()),
        ),
        GestureDetector(
          onTap: () => Get.to(() => const RewardsAndReferrals()),
          child: Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(AppConstants.pad_8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(AppConstants.pad_5)),
              border: Border.all(
                color: AppColors.borderGrayPrimary,
                width: 2,
              )
            ),
            child: Image.asset(AppIcons.gift, height: AppConstants.icon_height),
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  final bool cuts;

  const _ActionButton({
    required this.icon,
    required this.onTap,
    required this.cuts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CutCornerButton(
      width: 40,
      height: 40,
      onPressed: onTap,
      cornersToClip: cuts ? {Corner.topLeft, Corner.bottomRight} : {},
      cutSize: 10,
      backgroundColor: Colors.white,
      border: Border.all(color: AppColors.borderGrayPrimary, width: 2),
      child: Image.asset(icon, height: AppConstants.icon_height),
    );
  }
}
