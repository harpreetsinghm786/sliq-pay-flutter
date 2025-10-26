import 'package:flutter/material.dart';
import 'contact_list_item.dart';

class ContactList extends StatelessWidget {
  final ScrollController scrollController;
  const ContactList({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        controller: scrollController,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            child: ContactListItem(index: index),
          );
        },
      ),
    );
  }
}
