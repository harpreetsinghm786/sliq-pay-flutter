import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_colors.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../referral_bottom_sheet_controller.dart';
import 'contact_list_item.dart';

class ContactList extends StatelessWidget {
  final ScrollController scrollController;
  const ContactList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ReferralBottomSheetController>();
    return Expanded(
      child: Obx((){
        if (controller.isLoading.value) {
          return Container(
            color: Colors.white,
            child: ListView(
              controller: scrollController,
              children: [
                Container(
                    color: Colors.white,
              child: const Center(child: CircularProgressIndicator(color: AppColors.mainHeadingColor,))),
              ],
            ),
          );
        }

        if (controller.contacts.isEmpty) {
          return Container(
            color: Colors.white,
            child: ListView(
              controller: scrollController,
              children: [
                Container(
                    color: Colors.white,
                    child: const Center(child: Text(AppStrings.noContactsText))),
              ],
            ),
          );
        }

        return Container(
          color: Colors.white,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              controller: scrollController,
              itemCount: controller.contacts.length,
              itemBuilder: (BuildContext context, int index) {
                final contact = controller.contacts[index];
                final name = contact.displayName;
                final number = (contact.phones?.isNotEmpty ?? false)
                    ? contact.phones!.first.number ?? ''
                    : 'No number';
                return Container(
                  color: Colors.white,
                  child: ContactListItem(index: index,onTap: () => controller.sendInvite(number),
                    name: name,
                    number: number,
                  ),
                );
              },
            ),
        );
      }),
    );
  }
}

