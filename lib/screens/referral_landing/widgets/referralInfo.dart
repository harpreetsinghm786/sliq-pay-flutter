import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_images.dart';
import 'package:sliqpay/constants/app_strings.dart';
import 'package:sliqpay/screens/referral_landing/widgets/endlessRoller.dart';
import '../../../components/referral_bottom_sheet/referral_bottom_sheet_controller.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_textStyles.dart';

class referralInfo extends StatelessWidget {
  final ReferralBottomSheetController controller;

  const referralInfo({required this.controller, super.key});

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
        _ViewOfferDetails(),
        Container(
          height: 230,
          width: double.infinity,
          alignment: Alignment.center,
          child: Obx(
                () => Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  controller.currentBanner,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final rollerWidth = constraints.maxWidth * 0.12;
                    final rollerHeight = constraints.maxHeight * 0.30;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: constraints.maxWidth * 0.03),
                        EndlessRoller(
                          itemWidth: rollerWidth,
                          itemHeight: rollerHeight,
                          isLocked: true,
                          selectedImage: AppImages.male,
                        ),
                        SizedBox(width: constraints.maxWidth * 0.06),
                        EndlessRoller(
                          itemWidth: rollerWidth,
                          itemHeight: rollerHeight,
                        ),
                        SizedBox(width: constraints.maxWidth * 0.06),
                        EndlessRoller(
                          itemWidth: rollerWidth,
                          itemHeight: rollerHeight,
                        ),
                      ],
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
