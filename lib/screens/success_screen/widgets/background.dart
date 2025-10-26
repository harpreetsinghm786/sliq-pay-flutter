import 'package:flutter/material.dart';
import '../../../constants/app_images.dart';

class background extends StatelessWidget {
  const background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.successBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
