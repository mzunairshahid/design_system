import 'package:flutter/material.dart';
import 'package:ouditor_design_system/widgets/appbar_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/success_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/cutomer_growth_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/strategies_card_tile_widget.dart';
import 'package:ouditor_design_system/widgets/dropdown_widget/action_dropdown_widget.dart';
import 'package:ouditor_design_system/widgets/forums/forum_heading_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/two_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/table/your_transaction_table_card_widget.dart';

import '../utilities/color_constant.dart';
import '../utilities/constant.dart';
import '../widgets/card_widget/status_card_down_widget.dart';
import '../widgets/card_widget/status_card_upward_widget.dart';
import '../widgets/card_widget/target_sales_card_widget.dart';
import '../widgets/responsive/four_widgets_responsive.dart';
import 'app_drawer.dart';

class SaleProductScreen extends StatelessWidget {
  const SaleProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          logoUrl: 'lib/asset/images/logo.png',
          pageTitle: 'Dashboard',
          icon: Icons.notifications,
          onPressed: () {}),
      drawer: const SafeArea(child: AppDrawer()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Overview', style: kMediumLargeSemibold),
                  ActionDropdownWidget()
                ],
              ),
              const Text(
                'Status',
                style: kMediumLargeSemibold,
              ),
              const FourWidgetsResponsive(
                w1: StatusCardUpwardWidget(
                  cardTitle: 'Sales',
                  upwardLabelTitle: '+7.51%',
                  amount: '2.943',
                  subtitle: 'Compared to last year',
                ),
                w2: StatusCardDownwardWidget(
                  cardTitle: 'Purchase',
                  downwardLabeltitle: '-9.9%',
                  amount: '20.143',
                  subtitle: 'Compared to last year',
                ),
                w3: StatusCardUpwardWidget(
                  cardTitle: 'Return',
                  upwardLabelTitle: '+7.51%',
                  amount: '120.143',
                  subtitle: 'Compared to last year',
                ),
                w4: StatusCardUpwardWidget(
                  cardTitle: 'Marketing',
                  upwardLabelTitle: '+7.51%',
                  amount: '1.014',
                  subtitle: 'Compared to last year',
                ),
              ),
              const SizedBox(height: 30),
              const Text('Customer Growths', style: kMediumLargeSemibold),
              const SizedBox(height: 16),
              const CustomerGrowthCardWidget(),
              const SizedBox(height: 30),
              TwoWidgetsResponsive(
                  w1: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Target Sales', style: kMediumLargeSemibold),
                      SizedBox(height: 16),
                      Card(
                        child: Column(
                          children: [
                            TargetSalesCardwidget(
                              title: 'Return',
                              avatarImageURL:
                                  'lib/asset/images/return_target_avatar_icon.png',
                              avatarColor: kReturnAvatarColor,
                              trailingTitle: '+10%',
                              trailingImageURL:
                                  'lib/asset/images/upward_label_icon.png',
                              percentage: '75%',
                              subtitle: 'Compared to last year',
                            ),
                            Divider(
                              indent: 16,
                              endIndent: 16,
                            ),
                            TargetSalesCardwidget(
                              title: 'Purchase Target',
                              avatarImageURL:
                                  'lib/asset/images/purchase_target_avatar_icon.png',
                              avatarColor: kPurchaseAvatarColor,
                              trailingTitle: '+7%',
                              trailingImageURL:
                                  'lib/asset/images/upward_label_icon.png',
                              percentage: '65%',
                              subtitle: 'Compared to last year',
                            ),
                            Divider(
                              indent: 16,
                              endIndent: 16,
                            ),
                            TargetSalesCardwidget(
                              title: 'Audiance Target',
                              avatarImageURL:
                                  'lib/asset/images/audiance_target_avatar_icon.png',
                              avatarColor: kAdudianceAvatarColor,
                              trailingTitle: '-1%',
                              trailingImageURL:
                                  'lib/asset/images/downward_label_icon.png',
                              percentage: '90%',
                              subtitle: 'Compared to last year',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  w2: Column(
                    children: [
                      ForumHeadingWidget(
                          title: 'New Customers',
                          tabBlockText: 'View more',
                          onPress: () {}),
                      const SizedBox(height: 16),
                      const Card(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              StrategyCardTileWidget(
                                  title: 'Bitcoin Strategy',
                                  subtitle: 'Mon. Sep 27, 2021',
                                  imageURL: 'lib/asset/images/profle.png',
                                  avatarColor: kOffLineColor),
                              SizedBox(height: 23),
                              StrategyCardTileWidget(
                                  title: 'Bitcoin Strategy',
                                  subtitle: 'Mon. Sep 27, 2021',
                                  imageURL: 'lib/asset/images/profle.png',
                                  avatarColor: kOffLineColor),
                              SizedBox(height: 23),
                              StrategyCardTileWidget(
                                  title: 'Bitcoin Strategy',
                                  subtitle: 'Mon. Sep 27, 2021',
                                  imageURL: 'lib/asset/images/profle.png',
                                  avatarColor: kOffLineColor),
                              SizedBox(height: 23),
                              StrategyCardTileWidget(
                                  title: 'Bitcoin Strategy',
                                  subtitle: 'Mon. Sep 27, 2021',
                                  imageURL: 'lib/asset/images/profle.png',
                                  avatarColor: kOffLineColor),
                              SizedBox(height: 23),
                              StrategyCardTileWidget(
                                  title: 'Bitcoin Strategy',
                                  subtitle: 'Mon. Sep 27, 2021',
                                  imageURL: 'lib/asset/images/profle.png',
                                  avatarColor: kOffLineColor),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 10),
              ForumHeadingWidget(
                  title: 'Your Transaction Histories',
                  tabBlockText: 'View more',
                  onPress: () {}),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      YourTansactionHistoryCardWidget(
                          avatarColor: kOffLineColor,
                          avatarImage: 'lib/asset/images/send_icon.png',
                          title: 'Buy from ID 210939',
                          date: 'Oct 2, 21',
                          amount: '1.000',
                          labelButton: SuccessLabelButtonWidget(
                              title: 'Success',
                              backgroundColor: kSuccessButtonBackgroundColor)),
                      SizedBox(height: 10),
                      YourTansactionHistoryCardWidget(
                          avatarColor: kOffLineColor,
                          avatarImage:
                              'lib/asset/images/shopping_cart_icon.png',
                          title: 'Buy from ID 210939',
                          date: 'Oct 2, 21',
                          amount: '1.000',
                          labelButton: SuccessLabelButtonWidget(
                              title: 'Success',
                              backgroundColor: kSuccessButtonBackgroundColor)),
                      SizedBox(height: 10),
                      YourTansactionHistoryCardWidget(
                          avatarColor: kOffLineColor,
                          avatarImage: 'lib/asset/images/send_icon.png',
                          title: 'Buy from ID 210939',
                          date: 'Oct 2, 21',
                          amount: '1.000',
                          labelButton: SuccessLabelButtonWidget(
                              title: 'Success',
                              backgroundColor: kSuccessButtonBackgroundColor)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
