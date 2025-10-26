import 'package:flutter/material.dart';
import 'widgets/referral_header.dart';
import 'widgets/referral_list.dart';

class ReferralFragment extends StatefulWidget {
  const ReferralFragment({super.key});

  @override
  State<ReferralFragment> createState() => _ReferralFragmentState();
}

class _ReferralFragmentState extends State<ReferralFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ReferralHeader(),
        Expanded(child: ReferralList()),
      ],
    );
  }
}
