import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliq_pay/constants/app_textStyles.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/app_icons.dart';
import '../../../utils/cut_corner_button.dart';
import '../referral_bottom_sheet_controller.dart';

class ProgressPill extends StatelessWidget {
  const ProgressPill({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ReferralBottomSheetController>();
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipPath(
            clipper: RoundedTopTrapeziumClipper(cornerRadius: 10, topInset: 6),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
              padding: EdgeInsets.only(
                left: AppConstants.pad_10,
                right: AppConstants.pad_10,
                top: AppConstants.pad_5,
              ),
              child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      controller.stateIndex == 0
                          ? AppIcons.ellipseProgressPill
                          : AppIcons.ellipseSuccessPill,
                      height: AppConstants.icon_height,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      controller.currentMessage,
                      style: controller.stateIndex == 0
                          ? AppTextStyles.progressPillText
                          : AppTextStyles.successPillText,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
          ),
        ],
      ),
    );
  }
}
