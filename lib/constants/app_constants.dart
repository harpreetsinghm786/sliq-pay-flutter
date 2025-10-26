import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'app_colors.dart';

class AppConstants{

  static final List<Color> gradientColors = [
    AppColors.darkGrayPrimary,
    AppColors.mediumGrayPrimary,
    AppColors.darkGraySecondary,
  ];


//paddings
  static const double pad_5 = 5.0;
  static const double pad_8 = 8.0;
  static const double pad_10 = 10.0;
  static const double pad_15 = 15.0;
  static const double pad_20 = 20.0;
  static const double pad_25 = 25.0;
  static const double pad_30 = 30.0;

//font_sizes
  static const double font_8 = 8.0;
  static const double font_14 = 14.0;
  static const double font_16 = 16.0;
  static const double font_18 = 18.0;
  static const double font_24 = 24.0;
  static const double font_32 = 32.0;
  static const double font_40 = 40.0;

//radius
  static const double rad_5 = 5.0;
  static const double rad_10 = 10.0;
  static const double rad_15 = 15.0;
  static const double rad_20 = 20.0;

//icon height
  static const double icon_height=25;

//bottom_sheet_states
  static final double max_state_bs = Platform.isIOS ? 0.85 : 0.88;
  static final double min_state_bs = Platform.isIOS ? 0.48: 0.5;

//text_styles_Dark
  static const basePathImages = 'assets/images';
  static const basePathIcons = 'assets/icons';
  
}





