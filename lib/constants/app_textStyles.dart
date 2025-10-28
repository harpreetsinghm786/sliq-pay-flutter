import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_constants.dart';

class AppTextStyles{

  //font_Families
  static const String nunito = 'Nunito';
  static const String malinton = 'Malinton';


  //text_Styles
  static const TextStyle mainHeading = TextStyle(
    fontSize: AppConstants.font_20,
    fontWeight: FontWeight.w600,
    fontFamily: malinton,
    color: AppColors.mainHeadingColor,
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: AppConstants.font_18,
    fontWeight: FontWeight.w700,
    fontFamily: nunito,
    color: Colors.white,
  );


  static const TextStyle heading = TextStyle(
    fontSize: AppConstants.font_18,
    fontWeight: FontWeight.w700,
    fontFamily: malinton,
    color: AppColors.mainHeadingColor,
  );
  static const TextStyle sub_heading = TextStyle(
    fontSize: AppConstants.font_18,
    fontFamily: nunito,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle text_content = TextStyle(
    color: AppColors.subtitleGray,
    fontSize: AppConstants.font_16,
    fontFamily: nunito,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle hrefText = TextStyle(
    color: AppColors.bluePrimary,
    fontFamily: nunito,
    fontWeight: FontWeight.bold,
    fontSize: AppConstants.font_16,
  );

  static const TextStyle hrefTextSuccess = TextStyle(
    color: AppColors.bluePrimary,
    fontFamily: nunito,
    fontWeight: FontWeight.bold,
    fontSize: AppConstants.font_18,
  );

  static const TextStyle inviteText = TextStyle(
    color: AppColors.inviteTextColor,
    fontFamily: nunito,
    fontWeight: FontWeight.bold,
    fontSize: AppConstants.font_16,
  );

  static const TextStyle viewMoreText = TextStyle(
    color: AppColors.inviteTextColor,
    fontFamily: nunito,
    fontWeight: FontWeight.w700,
    fontSize: AppConstants.font_14,
  );

  static const TextStyle contentSuccess = TextStyle(
    color: AppColors.inviteTextColor,
    fontFamily: nunito,
    fontWeight: FontWeight.w500,
    fontSize: AppConstants.font_14,
  );

  static const TextStyle progressPillText = TextStyle(
    color: AppColors.bluePrimary,
    fontFamily: nunito,
    fontWeight: FontWeight.w500,
    fontSize: AppConstants.font_14,
  );

  static const TextStyle successPillText = TextStyle(
    color: AppColors.successPrimary,
    fontFamily: nunito,
    fontWeight: FontWeight.w500,
    fontSize: AppConstants.font_14,
  );

  static const TextStyle historyTitleText = TextStyle(
    color: AppColors.inviteTextColor,
    fontFamily: nunito,
    fontWeight: FontWeight.w400,
    fontSize: AppConstants.font_16,
  );
}