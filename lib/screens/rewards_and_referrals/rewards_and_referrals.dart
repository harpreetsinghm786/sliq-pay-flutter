import 'package:flutter/material.dart';
import 'package:sliqpay/screens/rewards_and_referrals/widgets/rewardsAppBar.dart';
import '../../components/referral_tabBar/referral_tabBar.dart';

class RewardsAndReferrals extends StatefulWidget {
  const RewardsAndReferrals({super.key});

  @override
  State<RewardsAndReferrals> createState() => _RewardsAndReferralsState();
}

class _RewardsAndReferralsState extends State<RewardsAndReferrals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            rewardsAppBar(),
            const SizedBox(height: 20),
            const Expanded(child: ReferralTabBar()),
          ],
        ),
      ),
    );
  }
}
