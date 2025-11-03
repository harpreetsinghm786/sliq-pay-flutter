import 'package:flutter/material.dart';
import '../../../../../constants/app_textStyles.dart';
import 'offer_section.dart';

class OfferContent extends StatelessWidget {
  const OfferContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "When three friends sign up, complete onboarding, and make their first qualifying transaction within 30 days of signing up, you earn \$20.",
            style: AppTextStyles.contentSuccess,
          ),
          SizedBox(height: 16),
          OfferSection(
            title: "How it works",
            bullets: [
              "Use your unique referral link from the app’s Referral screen.",
              "Your friend must sign up via your unique referral link, or using the phone number you invited.",
              "Once your third friend completes, we transfer the reward to your connected bank.",
              "Transfer completes within 3 business days. Status appears in Reward History.",
            ],
          ),
          SizedBox(height: 16),
          OfferSection(
            title: "Other terms",
            bullets: [
              "Only unique referrals count.",
              "To prevent abuse, we may limit and block those that abuse the program.",
              "We may withhold or reverse rewards if we detect fraud or violations of terms.",
              "We may update, suspend, or end the program at any time where permitted by law.",
              "We do not upload your address book. SMS composition happens on your device.",
              "Only unique referrals count.",
            ],
          ),
        ],
      ),
    );
  }
}
