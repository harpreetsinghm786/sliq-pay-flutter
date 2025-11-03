import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import 'package:sliqpay/constants/app_strings.dart';
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
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              ProgressPill(),
              const HeaderContent(),
              ContactList(scrollController: scrollController),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(
              left: AppConstants.pad_15,
              right: AppConstants.pad_15,
              bottom: AppConstants.pad_20,
              top: AppConstants.pad_10,
            ),
            child: BottomButton(onPressed: () => controller.shareApp(context),title: AppStrings.shareSliqPay,)
          )
            ],
          ),
        );
      },
    );
  }
}
