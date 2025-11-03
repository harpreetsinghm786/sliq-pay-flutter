import 'package:flutter/material.dart' hide Icons;
import 'package:get/get.dart';
import 'package:sliqpay/screens/referral_landing/widgets/backgroundImage.dart';
import 'package:sliqpay/screens/referral_landing/widgets/offer_Details_Model/offerDetailsModel.dart';
import 'package:sliqpay/screens/referral_landing/widgets/referralInfo.dart';
import 'package:sliqpay/screens/referral_landing/widgets/topActionButtons.dart';
import '../../components/referral_bottom_sheet/referral_bottom_sheet.dart';
import '../../components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import '../../constants/app_constants.dart';

class ReferralLanding extends StatefulWidget {
  const ReferralLanding({super.key});

  @override
  State<ReferralLanding> createState() => _ReferralLandingState();
}

class _ReferralLandingState extends State<ReferralLanding> {
  final ReferralBottomSheetController controller = Get.put(
    ReferralBottomSheetController(),
  );

  void openOfferDetailsModels(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return OfferDetailsModel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppConstants.pad_15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: [
                    topActionButtons(),
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.height * 0.6 -
                          (MediaQuery.of(context).size.height * 0.6 - 60),
                    ),
                    ReferralInfo(
                      controller: controller,
                      onPressed: () => openOfferDetailsModels(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ReferralBottomSheet(),
        ],
      ),
    );
  }
}
