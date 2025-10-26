import 'package:flutter/material.dart';
import 'reward_history_tile.dart';

class RewardHistoryList extends StatelessWidget {
  const RewardHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) => RewardHistoryTile(index: index),
    );
  }
}
