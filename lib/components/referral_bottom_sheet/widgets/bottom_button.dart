import 'package:flutter/material.dart';
import 'package:sliq_pay/constants/app_strings.dart';
import 'package:sliq_pay/constants/app_textStyles.dart';
import '../../../constants/app_constants.dart';
import '../../../utils/cut_corner_button.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: AppConstants.pad_20,
        right: AppConstants.pad_20,
        bottom: AppConstants.pad_20,
        top: AppConstants.pad_10,
      ),
      child: CutCornerButton(
        onPressed: onPressed,
        child: Text(AppStrings.shareSliqPay, style: AppTextStyles.buttonText),
        cornersToClip: {Corner.topLeft, Corner.bottomRight},
        gradient: LinearGradient(colors: AppConstants.gradientColors),
        cutSize: 16,
      ),
    );
  }
}
