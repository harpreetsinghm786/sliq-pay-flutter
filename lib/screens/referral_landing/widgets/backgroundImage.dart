import 'package:flutter/material.dart';
import '../../../constants/app_images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
