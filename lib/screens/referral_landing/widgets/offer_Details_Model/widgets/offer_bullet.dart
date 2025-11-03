import 'package:flutter/material.dart';
import '../../../../../constants/app_strings.dart';
import '../../../../../constants/app_textStyles.dart';

class OfferBullet extends StatelessWidget {
  final String text;

  const OfferBullet({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.bulletPoint,
            style: AppTextStyles.contentSuccess,
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.contentSuccess,
            ),
          ),
        ],
      ),
    );
  }
}
