import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/big_avatar_widget.dart.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/button/popup_menu_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/small_button/small_button_widget.dart';
import 'package:ouditor_design_system/widgets/tab_block/tab_line_widget.dart';

import '../../utilities/color_constant.dart';

class ProfilePopUpCardWidget extends StatefulWidget {
  final String avatarImageurl;
  final Color avatarBackgroundColor;
  final String name;
  final String subName;
  final String buttonText;
  final String tabBlockText1;
  final String tabBlockText2;
  final String tabBlockText3;
  const ProfilePopUpCardWidget(
      {super.key,
      required this.avatarImageurl,
      required this.avatarBackgroundColor,
      required this.name,
      required this.subName,
      required this.buttonText,
      required this.tabBlockText1,
      required this.tabBlockText2,
      required this.tabBlockText3});

  @override
  State<ProfilePopUpCardWidget> createState() => _ProfilePopUpCardWidgetState();
}

class _ProfilePopUpCardWidgetState extends State<ProfilePopUpCardWidget> {
  int selectedIndex = 0;
  String information = '';
  String servers = '';
  String mutualFriends = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigAvatarWidget(
                imageUrl: widget.avatarImageurl,
                backgroundColor: widget.avatarBackgroundColor,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name, style: kLargeBold),
                    Text(
                      widget.subName,
                      style: kProductSubtitle,
                    ),
                    const SizedBox(height: 10),
                    SmallCompleteButtonWidget(
                        label: widget.buttonText,
                        onPressed: () {},
                        normalColor: kPrimaryNormalButonColor,
                        hoverColor: kPrimaryHoverButtonColor,
                        clickColor: kPrimaryClickButtonColor,
                        disableColor: kPrimaryNormalButonColor,
                        borderColor: kPrimaryHoverButtonColor)
                  ],
                ),
              ),
              PopupMenuButtonWidget(
                items: const <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Follow',
                    child: Text('Follow'),
                  ),
                  PopupMenuItem<String>(
                    value: 'UnFriend',
                    child: Text('UnFriend'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Block',
                    child: Text('Block'),
                  ),
                ],
                onSelected: (String choice) {},
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabLineWidget(
                  title: widget.tabBlockText1,
                  onPress: () {
                    setState(() {
                      selectedIndex = 0; // Update selected index
                    });
                  },
                  isSelected:
                      selectedIndex == 0, // Check if this tab is selected
                ),
                TabLineWidget(
                  title: widget.tabBlockText2,
                  onPress: () {
                    setState(() {
                      selectedIndex = 1; // Update selected index
                    });
                  },
                  isSelected:
                      selectedIndex == 1, // Check if this tab is selected
                ),
                TabLineWidget(
                  title: widget.tabBlockText3,
                  onPress: () {
                    setState(() {
                      selectedIndex = 2; // Update selected index
                    });
                  },
                  isSelected:
                      selectedIndex == 2, // Check if this tab is selected
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _buildContentForSelectedTab(
                  selectedIndex) // Build content based on selected tab
              ),
        ],
      ),
    );
  }
}

Widget _buildContentForSelectedTab(selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return _buildBasicInfoContent(); // Method to build Basic Info content
    case 1:
      return _buildMutualServersContent(); // Method to build Mutual Servers content
    case 2:
      return _buildMutualFriendsContent(); // Method to build Mutual Friends content
    default:
      return Container(); // Return empty container if none of the cases match
  }
}

Widget _buildBasicInfoContent() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Email', style: kCardSubtitle),
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Zunair@gmail.com',
          hintStyle: kSmallMedium,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(height: 10),
      Text('Phone', style: kCardSubtitle),
      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: '+923-1490154',
          hintStyle: kSmallMedium,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
      SizedBox(height: 10),
      Text('Biodata', style: kCardSubtitle),
      TextField(
        decoration: InputDecoration(
          hintText: 'Faisal Town Moon Market',
          hintStyle: kSmallMedium,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  );
}

Widget _buildMutualServersContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kOffLineColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Omnichannel',
            style: kSmallSemibold,
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kOffLineColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Omnichannel',
            style: kSmallSemibold,
          )
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kOffLineColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Omnichannel',
            style: kSmallSemibold,
          )
        ],
      ),
    ],
  );
}

Widget _buildMutualFriendsContent() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          MediumAvatarWidget(
              backgroundColor: kOffLineColor,
              imageUrl: 'lib/asset/images/profle.png'),
          SizedBox(width: 10),
          Text('Samuel Reza', style: kSmallBold),
        ],
      ),
      SizedBox(height: 10),
      Row(
        children: [
          MediumAvatarWidget(
              backgroundColor: kOffLineColor,
              imageUrl: 'lib/asset/images/profle.png'),
          SizedBox(width: 10),
          Text('Samuel Reza', style: kSmallBold),
        ],
      ),
      SizedBox(height: 10),
      Row(
        children: [
          MediumAvatarWidget(
              backgroundColor: kOffLineColor,
              imageUrl: 'lib/asset/images/profle.png'),
          SizedBox(width: 10),
          Text('Samuel Reza', style: kSmallBold),
        ],
      ),
    ],
  );
}
