import 'package:flutter/material.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_textStyles.dart';
import '../../../utils/leading_avatar.dart';

class ContactListItem extends StatelessWidget {
  final int index;
  final VoidCallback onTap;
  final String name;
  final String number;

  const ContactListItem({
    super.key,
    required this.index,
    required this.onTap,
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListTile(
          leading: leadingAvatar(name, index),
          title: Text(name, style: AppTextStyles.sub_heading),
          subtitle: Text(number, style: AppTextStyles.text_content),
          trailing: GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                    AppIcons.add, height: AppConstants.icon_height),
                Text(AppStrings.inviteButtonText, style: AppTextStyles.inviteText),
              ],
            ),
          ),
        )
    );
  }
}
