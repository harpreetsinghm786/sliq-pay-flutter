import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          onTap: () => Get.to(() => SuccessScreen()),
        ),
        _ActionButton(
          icon: AppIcons.gift,
          onTap: () => Get.to(() => const RewardsAndReferrals()),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const _ActionButton({required this.icon, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return CutCornerButton(
      width: 50,
      height: 50,
      onPressed: onTap,
      cornersToClip: {Corner.topLeft, Corner.bottomRight},
      cutSize: 10,
      backgroundColor: Colors.white,
      border: Border.all(
        color: AppColors.borderGrayPrimary,
        width: 2,
      ),
      child: Image.asset(icon, height: 25),
    );
  }
}
