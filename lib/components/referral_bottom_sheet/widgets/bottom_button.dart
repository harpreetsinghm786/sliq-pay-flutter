import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_colors.dart';
import 'package:sliqpay/constants/app_textStyles.dart';
import '../../../utils/cut_corner_button.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const BottomButton({super.key, required this.onPressed,required this.title});

  @override
  Widget build(BuildContext context) {
    return CutCornerButton(
        onPressed: onPressed,
        child: Text(title, style: AppTextStyles.buttonText),
        cornersToClip: {Corner.topLeft, Corner.bottomRight},
        gradient: AppColors.primaryButtonGradient,
        cutSize: 16,
      );
  }
}
