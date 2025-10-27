import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_icons.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_textStyles.dart';
import '../../../../../utils/leading_avatar.dart';

class ReferralListTile extends StatelessWidget {
  final int index;

  const ReferralListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final bool isJoined = index % 2 != 0;

    return Container(
      color: Colors.white,
      child: ListTile(
        leading: leadingAvatar(AppStrings.defaultContactName, index),
        title: Text(AppStrings.defaultContactName, style: AppTextStyles.sub_heading),
        subtitle: Text(AppStrings.defaultContactNumber, style: AppTextStyles.text_content),
        trailing: _buildStatusIndicator(isJoined),
      ),
    );
  }

  Widget _buildStatusIndicator(bool isJoined) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              isJoined
                  ? AppIcons.tickCircle
                  : AppIcons.clock,
              height: AppConstants.icon_height,
            ),
            const SizedBox(width: 5),
            Text(
              isJoined ? AppStrings.joinedStatusText: AppStrings.inviteStatusText,
              style: TextStyle(
                color: isJoined
                    ? AppColors.successPrimary
                    : AppColors.warningPrimary,
                fontFamily: AppTextStyles.nunito,
                fontWeight: FontWeight.bold,
                fontSize: AppConstants.font_16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
