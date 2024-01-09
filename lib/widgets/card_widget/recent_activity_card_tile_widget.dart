import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';

class RecentActivityCardtileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final Color avatarColor;
  final String trailingTitle;
  final String trailingSubtitle;
  final Function onPress;

  const RecentActivityCardtileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageURL,
      required this.avatarColor,
      required this.trailingTitle,
      required this.trailingSubtitle,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: kSmallSemibold,
      ),
      subtitle: Text(
        subtitle,
        style: kCardSubtitle,
      ),
      leading: MediumAvatarWidget(
        imageUrl: imageURL,
        backgroundColor: avatarColor,
      ),
      trailing: Column(
        children: [
          Text(
            trailingTitle,
            style: kSmallSemibold,
          ),
          const SizedBox(height: 06),
          Text(
            trailingSubtitle,
            style: kExtraSmallRegular,
          )
        ],
      ),
    );
  }
}
