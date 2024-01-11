import 'package:flutter/material.dart';
import '../utilities/color_constant.dart';
import '../utilities/constant.dart';
import '../components/button/icon_button/primary_icon_button_widget.dart';
import '../widgets/dropdown_widget/action_dropdown_widget.dart';
import '../widgets/dropdown_widget/rows_dropdown_widget.dart';
import '../components/search_bar/white_background_search_bar.dart';
import '../widgets/table/six_column_table_widget.dart';
import 'app_drawer.dart';

class AdministrationScreen extends StatelessWidget {
  const AdministrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/asset/images/logo.png', color: kAppBarColor),
            const SizedBox(width: 10),
            const Text('Dashboard', style: kLargeSemibold),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: kAppBarColor),
          ),
        ],
      ),
      drawer: const SafeArea(child: AppDrawer()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'All Product',
                style: kMediumLargeSemibold,
              ),
              const SizedBox(
                height: 16,
              ),
              const WhiteBackgroungSearchBarWidget(
                labelText: 'Search Product',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ActionDropdownWidget(),
                  PrimaryIconButtonWidget(
                      label: 'New Product',
                      imageUrl: 'lib/asset/images/chat_white.png',
                      onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SixColumnTableWidget(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1-8 of 5432 Assets',
                    style: kSmallMedium,
                  ),
                  RowsDropdownWidget()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
