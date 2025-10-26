import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_constants.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_textStyles.dart';
import './fragments/referral_fragment/referral_fragment.dart';
import './fragments/reward_history_fragment/reward_history_fragment.dart';

class ReferralTabBar extends StatefulWidget {
  const ReferralTabBar({super.key});

  @override
  State<ReferralTabBar> createState() => _ReferralTabBarState();
}

class _ReferralTabBarState extends State<ReferralTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 36,
            margin: EdgeInsets.symmetric(horizontal: AppConstants.pad_20),
            decoration: BoxDecoration(
              color: AppColors.tabBarColor,
              borderRadius: BorderRadius.circular(AppConstants.rad_20),
            ),
            child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              splashBorderRadius: BorderRadius.circular(AppConstants.pad_20),
              isScrollable: false,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.pad_20),
                gradient: LinearGradient(colors: AppConstants.gradientColors)
              ),
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              labelStyle:AppTextStyles.viewMoreText,
              unselectedLabelColor: AppColors.inviteTextColor,
              indicatorWeight: 0,
              dividerColor: Colors.transparent,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              tabs: const [
                Tab(text: AppStrings.rewardHistoryTab),
                Tab(text: AppStrings.allReferralsTab),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                RewardHistoryFragment(),
                ReferralFragment()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
