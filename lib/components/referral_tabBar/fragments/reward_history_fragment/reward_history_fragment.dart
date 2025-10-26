import 'package:flutter/material.dart';
import '../../../../constants/app_constants.dart';
import 'widgets/reward_history_header.dart';
import 'widgets/reward_history_list.dart';

class RewardHistoryFragment extends StatefulWidget {
  const RewardHistoryFragment({super.key});

  @override
  State<RewardHistoryFragment> createState() => _RewardHistoryFragmentState();
}

class _RewardHistoryFragmentState extends State<RewardHistoryFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.pad_20),
      child: Column(
        children: [
          const RewardHistoryHeader(),
          const Expanded(child: RewardHistoryList()),
        ],
      ),
    );
  }
}
