import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';

class NewPaymentMethodCardTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Color avatarColor;
  final String trailingTitle;
  final String trailingSubtitle;
  final Function onPress;

  const NewPaymentMethodCardTileWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.avatarColor,
    required this.trailingTitle,
    required this.trailingSubtitle,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: kSmallSemibold,
        ),
        subtitle: Text(subtitle),
        leading: MediumAvatarWidget(
          imageUrl: imageUrl,
          backgroundColor: avatarColor,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
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
            const SizedBox(width: 15),
            IconButton(
                onPressed: onPress(),
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                ))
          ],
        ));
  }
}
