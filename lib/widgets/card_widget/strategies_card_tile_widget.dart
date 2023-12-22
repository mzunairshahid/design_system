import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';

class StrategyCardTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final Color avatarColor;

  const StrategyCardTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageURL,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MediumAvatarWidget(
          imageUrl: imageURL,
          backgroundColor: avatarColor,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kSmallSemibold,
              ),
              const SizedBox(height: 6),
              Text(
                subtitle,
                style: kCardSubtitle,
              ),
            ],
          ),
        ),
        PopupMenuButton<String>(
          onSelected: (String choice) {},
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 3',
                child: Text('Option 3'),
              ),
            ];
          },
        ),
      ],
    );
  }
}
