import 'package:flutter/material.dart';
import 'package:ouditor_design_system/components/avatar/stacks_avatar_widget.dart';
import 'package:ouditor_design_system/components/button/label_button/success_label_button_widget.dart';

import '../../utilities/color_constant.dart';
import '../../utilities/constant.dart';

class CardKanbanWidget extends StatelessWidget {
  final Color labelBackgroundColor;
  final String lableText;
  final String title;
  final String description;
  final String imageUrl1;
  final String imageUrl2;
  final String month;
  final String attachmentFileCount;
  final String checkboxText;
  final Function onMenuPress;
  const CardKanbanWidget(
      {super.key,
      required this.labelBackgroundColor,
      required this.lableText,
      required this.title,
      required this.description,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.month,
      required this.attachmentFileCount,
      required this.checkboxText,
      required this.onMenuPress});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuccessLabelButtonWidget(
                  title: lableText,
                  backgroundColor: labelBackgroundColor,
                ),
                GestureDetector(
                    onTap: onMenuPress(),
                    child: const Text(
                      '...',
                      style: kLargeMedium,
                    ))
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: kMediumLargeSemibold,
            ),
            Text(
              description,
              style: kSmallMedium,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imageUrl1,
                  height: 105,
                  width: 105,
                ),
                Image.asset(
                  imageUrl2,
                  height: 105,
                  width: 105,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const StacksAvatarWidget(
                    avatarBackground: kSecondaryClickButtonColor,
                    imageUrl1: 'lib/asset/images/profle.png',
                    imageUrl2: 'lib/asset/images/profle.png',
                    imageUrl3: 'lib/asset/images/profle.png'),
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/images/calender_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    Text(month, style: kExtraSmalSemibold),
                    const SizedBox(width: 10),
                    Image.asset(
                      'lib/asset/images/attachment_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      attachmentFileCount,
                      style: kExtraSmalSemibold,
                    ),
                    const SizedBox(width: 16),
                    Image.asset(
                      'lib/asset/images/check_list_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    Text(checkboxText, style: kExtraSmalSemibold)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
