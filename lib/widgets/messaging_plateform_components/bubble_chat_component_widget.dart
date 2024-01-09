import 'package:flutter/material.dart';

import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/msg_reacts_component_widget.dart';

class BubbleChatComponentWidget extends StatelessWidget {
  final String avatarImage;
  final Color avatarBackgroundColor;
  final String name;
  final String time;
  final String messageText;
  const BubbleChatComponentWidget(
      {super.key,
      required this.avatarImage,
      required this.avatarBackgroundColor,
      required this.name,
      required this.time,
      required this.messageText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: MediumAvatarWidget(
            backgroundColor: avatarBackgroundColor, imageUrl: avatarImage),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name, style: kSmallBold),
            const SizedBox(width: 10),
            Text(time, style: kCardSubtitle),
          ],
        ),
        subtitle: Text(messageText, style: kSmallMedium),
        trailing: const MsgReactsComponentWidget(),
      ),
    );
  }
}
