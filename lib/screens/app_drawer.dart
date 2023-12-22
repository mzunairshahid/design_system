import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/administration_screen.dart';
import 'package:ouditor_design_system/screens/card_screen.dart';
import 'package:ouditor_design_system/screens/dashboard_screen.dart';
import 'package:ouditor_design_system/screens/feedback_screen.dart';
import 'package:ouditor_design_system/screens/leader_board_screen.dart';
import 'package:ouditor_design_system/screens/sale_product_screen.dart';
import 'package:ouditor_design_system/screens/setting_screen.dart';
import 'package:ouditor_design_system/screens/spread_sheet_screen.dart';
import 'package:ouditor_design_system/screens/text_field_screen.dart';
import 'package:ouditor_design_system/screens/wide_list_screen.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/drawer_widget/drawer_list_tile.dart';

import 'message_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kAppBarColor,
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          DrawerListTile(
            title: 'Overview',
            imageURL: 'lib/asset/images/dashboard_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/dashboard_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Leaderboard',
            imageURL: 'lib/asset/images/leaderboard_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/leaderboard_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LeaderBordScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Spreadsheet',
            imageURL: 'lib/asset/images/spreadsheet_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/spreadsheet_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SpreadSheetScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Administration',
            imageURL: 'lib/asset/images/administration_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/administration_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdministrationScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Sales Product List',
            imageURL: 'lib/asset/images/sale_product_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/sale_product_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SaleProductScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Transaction History',
            imageURL: 'lib/asset/images/transaction_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/transaction_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MessageScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Profits',
            imageURL: 'lib/asset/images/profit_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/profit_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Schedules',
            imageURL: 'lib/asset/images/schedule_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/schedule_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedBackScreen()));
            },
          ),
          const SizedBox(height: 16),
          const Text(
            'OTHER',
            style: kExtraSmallMedium,
          ),
          const SizedBox(height: 8),
          DrawerListTile(
            title: 'Message',
            imageURL: 'lib/asset/images/message_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/message_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WideListScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Library',
            imageURL: 'lib/asset/images/liabrary_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/liabrary_active_icon.png',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CardScreen()));
            },
          ),
          const SizedBox(height: 16),
          DrawerListTile(
            title: 'Settings',
            imageURL: 'lib/asset/images/setting_inactive_icon.png',
            tappedImageURL: 'lib/asset/images/setting_active_icon.png',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextFieldScreen()));
            },
          ),
        ],
      ),
    );
  }
}
