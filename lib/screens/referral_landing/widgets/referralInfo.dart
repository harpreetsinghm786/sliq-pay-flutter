import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_constants.dart';
import 'package:sliqpay/constants/app_images.dart';
import 'package:sliqpay/constants/app_strings.dart';
import 'package:sliqpay/screens/referral_landing/widgets/endless_Verticle_Roller/endlessRoller.dart';
import '../../../components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_textStyles.dart';

class ReferralInfo extends StatelessWidget {
  final ReferralBottomSheetController controller;
  final VoidCallback onPressed;
  const ReferralInfo({required this.controller,required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Text(
            controller.currentTitle,
            style: AppTextStyles.mainHeading,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onPressed,
          child: _ViewOfferDetails(),),
        SizedBox(
          height:200,
          width:350,
          child: Obx(
                () => Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  controller.currentBanner,
                  fit: BoxFit.contain,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {

                    final double rollerWidth = 38;
                    final double rollerHeight = 70;

                    return SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: AppConstants.pad_10,left: AppConstants.pad_5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 5),
                            EndlessRoller(
                              itemWidth: rollerWidth,
                              itemHeight: rollerHeight,
                              isLocked: true,
                              selectedImage: AppImages.male,
                            ),
                            SizedBox(width: 25),
                            EndlessRoller(
                              itemWidth: rollerWidth,
                              itemHeight: rollerHeight,
                            ),
                            SizedBox(width: 25),
                            EndlessRoller(
                              itemWidth: rollerWidth,
                              itemHeight: rollerHeight,
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )

      ]);


  }
}

class _ViewOfferDetails extends StatelessWidget {
  const _ViewOfferDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            AppStrings.viewOfferDetails,
            style: AppTextStyles.viewMoreText,
            textAlign: TextAlign.center,
          ),
        const SizedBox(width: 5),
        Image.asset(AppIcons.arrowRight, height: 14),
      ],
    );
  }
}
