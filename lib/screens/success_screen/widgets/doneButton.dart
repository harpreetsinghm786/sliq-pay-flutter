import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_textStyles.dart';

class doneButton extends StatelessWidget {
  const doneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Center(
        child: Text(
          AppStrings.doneButton,
          style: AppTextStyles.hrefTextSuccess,
        ),
      ),
    );
  }
}
