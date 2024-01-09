import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';

class NewCustomerCardwidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final Color avatarColor;

  const NewCustomerCardwidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageURL,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 16),
      child: ListTile(
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
          trailing: const Text(
            '...',
            style: kMediumBold,
          )
          //  PopupMenuButton<String>(
          //   onSelected: (String choice) {},
          //   itemBuilder: (BuildContext context) {
          //     return <PopupMenuEntry<String>>[
          //       const PopupMenuItem<String>(
          //         value: 'Option 1',
          //         child: Text('Option 1'),
          //       ),
          //       const PopupMenuItem<String>(
          //         value: 'Option 2',
          //         child: Text('Option 2'),
          //       ),
          //       const PopupMenuItem<String>(
          //         value: 'Option 3',
          //         child: Text('Option 3'),
          //       ),
          //     ];
          //   },
          // ),
          ),
    );
  }
}
