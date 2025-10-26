import 'package:flutter/material.dart';
import './referral_list_tile.dart';

class ReferralList extends StatelessWidget {
  const ReferralList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) => ReferralListTile(index: index),
    );
  }
}
