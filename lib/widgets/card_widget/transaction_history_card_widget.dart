import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';

class TransactionHistoryCardWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color avatorColor;

  const TransactionHistoryCardWidget(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.avatorColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListTile(
        title: Text(
          title,
          style: kSmallSemibold,
        ),
        leading: MediumAvatarWidget(
          imageUrl: imageUrl,
          backgroundColor: avatorColor,
        ),
      ),
    );
  }
}
