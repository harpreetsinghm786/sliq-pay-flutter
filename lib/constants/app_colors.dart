import 'package:flutter/material.dart';

class AppColors{
  static const Color mainHeadingColor = Color(0XFF090F19);
  static const Color darkBlackPrimary = Color(0xFF151515);
  static const Color darkGrayPrimary = Color(0xFF252525);
  static const Color mediumGrayPrimary = Color(0xFF505050);
  static const Color darkGraySecondary = Color(0xFF292929);
  static const Color bluePrimary = Color(0xff1264A0);
  static const Color borderGrayPrimary= Color(0xffE7E8E9);
  static const Color subtitleGray = Color(0xff8F939A);
  static const Color inviteTextColor = Color(0xff0C1523);
  static const Color avatarMaroon = Color(0xff622E22);
  static const Color avatarGreen = Color(0xff455E05);
  static const Color avatarViolet = Color(0xff812C8B);
  static const Color tabBarColor =Color(0xffF0F1F3);
  static const Color historySubTitleColor = Color(0xff3D444F);
  static const Color warningPrimary =Color(0xffEF874A);
  static const Color successPrimary =Color(0xff1C822C);

  static const Color gradientStartDark = Color(0xFF252525);
  static const Color gradientMidDark = Color(0xFF636262);
  static const Color gradientEndDark = Color(0xFF292929);

  static const Color gradientStartLight = Color(0xFF151515);
  static const Color gradientMidLight = Color(0xFF505050);
  static const Color gradientEndLight = Color(0xFF151515);



  // Gradients
  static const LinearGradient primaryButtonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      gradientStartDark,
      gradientMidDark,
      gradientEndDark,
    ],
    stops: [0.0, 0.7684, 1.0],
  );

  static const LinearGradient tabBarIndicatorGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      gradientStartLight,
      gradientMidLight,
      gradientEndLight,
    ],
    stops: [0.0, 0.7684, 1.0],
  );
}

