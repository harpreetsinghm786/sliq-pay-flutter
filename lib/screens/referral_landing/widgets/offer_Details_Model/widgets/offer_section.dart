import 'package:flutter/material.dart';
import '../../../../../constants/app_textStyles.dart';
import 'offer_bullet.dart';

class OfferSection extends StatelessWidget {
  final String title;
  final List<String> bullets;

  const OfferSection({
    super.key,
    required this.title,
    required this.bullets,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.modelTitle),
        const SizedBox(height: 8),
        ...bullets.map((b) => OfferBullet(text: b)),
      ],
    );
  }
}
