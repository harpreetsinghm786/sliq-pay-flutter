import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_images.dart';
import 'rollerController.dart';

class EndlessRoller extends StatelessWidget {
  final double? itemHeight;
  final double? itemWidth;
  final bool? isLocked;
  final String? selectedImage;

  const EndlessRoller({super.key, this.itemHeight, this.itemWidth,this.isLocked,this.selectedImage});

  @override
  Widget build(BuildContext context) {
    final contacts = [AppImages.male, AppImages.dog, AppImages.cat];

    return Center(
      child: RollerController(
        contacts: contacts,
        speed: 2.0,
        itemHeight: itemHeight ?? 100,
        itemWidth: itemWidth ?? 100,
        isLocked: isLocked?? false,
        selectedImage: selectedImage?? AppImages.dog,
      ),
    );
  }
}
