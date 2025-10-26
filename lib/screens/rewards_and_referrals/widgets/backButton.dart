import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../utils/cut_corner_button.dart';

class backButton extends StatelessWidget {
  const backButton({super.key});
  @override
  Widget build(BuildContext context) {
    return CutCornerButton(
      width: 50,
      height: 50,
      onPressed: () => Get.back(),
      cornersToClip: {Corner.topLeft, Corner.bottomRight},
      cutSize: 10,
      backgroundColor: Colors.white,
      border: Border.all(
        color: AppColors.borderGrayPrimary,
        width: 2,
      ),
      child: Image.asset(AppIcons.back, height: 25),
    );
  }
}