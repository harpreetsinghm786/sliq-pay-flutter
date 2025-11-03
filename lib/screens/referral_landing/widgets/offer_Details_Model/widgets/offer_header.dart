import 'package:flutter/material.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_icons.dart';
import '../../../../../constants/app_strings.dart';
import '../../../../../constants/app_textStyles.dart';

class OfferHeader extends StatelessWidget {
  const OfferHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.pad_5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: AppConstants.pad_10),
              child: Text(
                AppStrings.offerDetailsTitle,
                style: AppTextStyles.modelTitle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            child: Image.asset(
              AppIcons.close,
              height: AppConstants.icon_height * 2,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
