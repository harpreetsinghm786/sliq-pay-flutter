import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_images.dart';

final avatars = [
  {
    'background': AppImages.redPaper,
    'color': AppColors.avatarMaroon,
  },
  {
    'background': AppImages.greenPaper,
    'color': AppColors.avatarGreen,
  },
  {
    'background': AppImages.violetPaper,
    'color': AppColors.avatarViolet,
  },
];

Widget leadingAvatar(String name, int index) {
  // Repeat 0,1,2,0,1,2... using modulus
  final avatarIndex = index % avatars.length;

  return CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage(avatars[avatarIndex]['background'] as String),
    backgroundColor: Colors.transparent, // optional
    child: getAvatarText(name, avatarIndex),
  );
}

Widget getAvatarText(String name, int index) {
  String initials = name.isNotEmpty
      ? name.trim().split(' ').map((e) => e[0]).take(2).join()
      : '?';
  return Text(
    initials.toUpperCase(),
    style: TextStyle(
      color: avatars[index]['color'] as Color, // dynamic color
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
