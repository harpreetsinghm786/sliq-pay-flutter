import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import '../../constants/app_constants.dart';
import 'widgets/progress_pill.dart';
import 'widgets/header_content.dart';
import 'widgets/contact_list.dart';
import 'widgets/bottom_button.dart';

class ReferralBottomSheet extends StatefulWidget {
  const ReferralBottomSheet({super.key});

  @override
  State<ReferralBottomSheet> createState() => _ReferralBottomSheetState();
}

class _ReferralBottomSheetState extends State<ReferralBottomSheet> {
  final ReferralBottomSheetController controller = Get.put(ReferralBottomSheetController());

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: AppConstants.min_state_bs,
      minChildSize: AppConstants.min_state_bs,
      maxChildSize: AppConstants.max_state_bs,
      snap: true,
      snapSizes: [AppConstants.min_state_bs, AppConstants.max_state_bs],
      builder: (BuildContext context, ScrollController scrollController) {
        return Column(
          children: [
            ProgressPill(),
            const HeaderContent(),
            ContactList(scrollController: scrollController),
            BottomButton(onPressed: () => controller.shareApp(context))
          ],
        );
      },
    );
  }
}
