import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/big_avatar_widget.dart.dart';
import 'package:ouditor_design_system/widgets/avatar/icon_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avatar and Placeholder',
          style: kExtraLargeBold,
        ),
        backgroundColor: kAppBarColor,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 75, vertical: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Avatar', style: kMediumLargeSemibold),
                SizedBox(height: 20),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: Colors.pink,
                ),
                SizedBox(height: 20),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(height: 20),
                IconAvatarWidget(
                    icon: Icons.autorenew_rounded,
                    backgroungColour: Color(0xFFF18424),
                    radiusAvatar: 32,
                    iconSize: 18),
                SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Text('Crypto', style: kMediumLargeSemibold),
              ],
            )
          ],
        ),
      ),
    );
  }
}
