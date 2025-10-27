import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_textStyles.dart';

class referralInfo extends StatelessWidget {
  final ReferralBottomSheetController controller;

  const referralInfo({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
              () => Text(
            controller.currentTitle,
            style: AppTextStyles.mainHeading,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        _ViewOfferDetails(),
        const SizedBox(height: 20),
        Obx(
              () => Image.asset(
            controller.currentBanner,
            height: 220,
          ),
        ),
      ],
    );
  }
}

class _ViewOfferDetails extends StatelessWidget {
  const _ViewOfferDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.viewOfferDetails,
          style: AppTextStyles.viewMoreText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(width: 5),
        Image.asset(AppIcons.arrowRight, height: 14),
      ],
    );
  }
}
