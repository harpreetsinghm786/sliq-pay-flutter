import 'package:flutter/material.dart';
import '../../../../components/referral_bottom_sheet/widgets/bottom_button.dart';
import '../../../../constants/app_constants.dart';
import '../../../../constants/app_strings.dart';
import '../../../../utils/cut_corner_button.dart';
import 'widgets/offer_header.dart';
import 'widgets/offer_content.dart';

class OfferDetailsModel extends StatefulWidget {
  const OfferDetailsModel({super.key});

  @override
  State<OfferDetailsModel> createState() => _OfferDetailsModelState();
}

class _OfferDetailsModelState extends State<OfferDetailsModel> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: ClipPath(
        clipper: TopCutCornerClipper(cutSize: 20),
        child: Container(
          height: MediaQuery.of(context).size.height * AppConstants.max_state_bs,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.pad_15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const OfferHeader(),
                const Expanded(child: OfferContent()),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    bottom: AppConstants.pad_5,
                    top: AppConstants.pad_10,
                  ),
                  child: BottomButton(
                    onPressed: () => Navigator.pop(context),
                    title: AppStrings.offerDetailsButtonText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
