import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sliq_pay/constants/app_icons.dart';
import 'package:sliq_pay/constants/app_strings.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_constants.dart';
import '../../../../../constants/app_textStyles.dart';

class RewardHistoryTile extends StatelessWidget {
  final int index;

  const RewardHistoryTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final bool isTransferred = index % 2 != 0;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: AppConstants.pad_10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.rewardEarnedText,
            style: AppTextStyles.heading,
          ),
          Row(
            children: [
              Text(
                AppStrings.rewardDatePlaceholder,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: AppTextStyles.nunito,
                  fontSize: AppConstants.font_16,
                  color: AppColors.historySubTitleColor,
                ),
              ),
              SizedBox(width: AppConstants.pad_5),
              Image.asset(AppIcons.separator),
              SizedBox(width: AppConstants.pad_5),
              Row(
                children: [
                  Image.asset(
                    isTransferred
                        ? AppIcons.tickCircle
                        : AppIcons.clock,
                    height: AppConstants.icon_height,
                  ),
                  SizedBox(width: AppConstants.pad_5),
                  Text(
                    isTransferred
                        ? AppStrings.transferredToBankText
                        : AppStrings.pendingTransferText,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: AppTextStyles.nunito,
                      fontSize: AppConstants.font_16,
                      color: isTransferred
                          ? AppColors.successPrimary
                          : AppColors.warningPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppConstants.pad_20),
            child: DottedLine(
              dashLength: 4,
              dashGapLength: 3,
              lineThickness: 1,
              dashColor: AppColors.borderGrayPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
