import 'package:flutter/material.dart';
import 'package:ouditor_design_system/components/avatar/small_avatar_widget.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/big_avatar_widget.dart.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/utilities/theme_colors.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Avatar', style: kMediumLargeSemibold),
            SizedBox(height: 20),
            Row(
              children: [
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kVeryDarkColor,
                ),
                SizedBox(width: 5),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kDarkColor,
                ),
                SizedBox(width: 5),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kMediumColor,
                ),
                SizedBox(width: 5),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kMediumLightColor,
                ),
                SizedBox(width: 5),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kLightColor,
                ),
                SizedBox(width: 5),
                BigAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kVeryLightColor,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kVeryDarkColor,
                ),
                SizedBox(width: 5),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kDarkColor,
                ),
                SizedBox(width: 5),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kMediumColor,
                ),
                SizedBox(width: 5),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kMediumLightColor,
                ),
                SizedBox(width: 5),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kLightColor,
                ),
                SizedBox(width: 5),
                MediumAvatarWidget(
                  imageUrl: 'lib/asset/images/profle.png',
                  backgroundColor: kVeryLightColor,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SmallAvatarWidget(
                    backgroundColor: kVeryDarkColor,
                    imageUrl: 'lib/asset/images/profle.png'),
                SizedBox(width: 7),
                SmallAvatarWidget(
                    backgroundColor: kDarkColor,
                    imageUrl: 'lib/asset/images/profle.png'),
                SizedBox(width: 7),
                SmallAvatarWidget(
                    backgroundColor: kMediumColor,
                    imageUrl: 'lib/asset/images/profle.png'),
                SizedBox(width: 7),
                SmallAvatarWidget(
                    backgroundColor: kMediumLightColor,
                    imageUrl: 'lib/asset/images/profle.png'),
                SizedBox(width: 7),
                SmallAvatarWidget(
                    backgroundColor: kLightColor,
                    imageUrl: 'lib/asset/images/profle.png'),
                SizedBox(width: 7),
                SmallAvatarWidget(
                    backgroundColor: kVeryLightColor,
                    imageUrl: 'lib/asset/images/profle.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
