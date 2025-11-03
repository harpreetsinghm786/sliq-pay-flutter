import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_textStyles.dart';

class successContent extends StatelessWidget {
  const successContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppStrings.successTitle,
          style: AppTextStyles.mainHeading,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: AppConstants.pad_15),
        Text(
          AppStrings.successAmount,
          style: const TextStyle(
            fontSize: 56,
            fontFamily: AppTextStyles.malinton,
            fontWeight: FontWeight.w700,
            color: AppColors.mainHeadingColor
          ),
        ),
        SizedBox(height: AppConstants.pad_10),
        Text(
          AppStrings.successDescription,
          textAlign: TextAlign.center,
          style: AppTextStyles.contentSuccess,
        ),
        Image.asset(AppImages.congrats),
      ],
    );
  }
}
