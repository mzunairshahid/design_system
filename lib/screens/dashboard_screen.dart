import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/app_drawer.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/button/label_button/detail_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/pending_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/success_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/average_sale_report_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/new_customer_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/sale_report_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/status_card_down_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/status_card_upward_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/target_sales_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/transaction_history_card_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/four_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/responsive/three_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/responsive/two_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/table/transaction_history_table_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text('Sales Analytics', style: kLargeSemibold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: kAppBarColor),
          ),
        ],
      ),
      drawer: const SafeArea(child: AppDrawer()),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status',
                style: kMediumLargeSemibold,
              ),
              FourWidgetsResponsive(
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
              TwoWidgetsResponsive(
                w1: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text('Sales Report', style: kMediumLargeSemibold),
                    SizedBox(height: 16),
                    SaleReportCardWidget(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('Avarage Total Sales', style: kMediumLargeSemibold),
              SizedBox(height: 16),
              Card(
                child: Column(
                  children: [
                    ThreeWidgetsResponsive(
                      w1: AverageSaleReportcardWidget(
                        percentage: '75%',
                        price: '200.023.101',
                        percent: 0.75,
                        subtitle: 'Disc Game Physic',
                        activeColor: kPrimaryNormalButonColor,
                        inactiveColor: kTabBlockBackgroundColor,
                      ),
                      w2: AverageSaleReportcardWidget(
                        percentage: '90%',
                        price: '200.023.101',
                        percent: 0.90,
                        subtitle: 'Disc Game Physic',
                        activeColor: kMicroTransactionActiveColor,
                        inactiveColor: kMicroInactiveColor,
                      ),
                      w3: AverageSaleReportcardWidget(
                        percentage: '30%',
                        price: '200.023.101',
                        percent: 0.30,
                        subtitle: 'Disc Game Physic',
                        activeColor: kPrimaryNormalButonColor,
                        inactiveColor: kTabBlockBackgroundColor,
                      ),
                    )

                    // Divider(
                    //   endIndent: 20,
                    //   indent: 20,
                    // ),
                  ],
                ),
              ),
              TwoWidgetsResponsive(
                w1: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('New Customers', style: kMediumLargeSemibold),
                        Text(
                          'View more',
                          style: kSecondaryTextButton,
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Card(
                      child: Column(
                        children: [
                          NewCustomerCardwidget(
                              title: 'Monthly Strategy',
                              subtitle: 'Mon. Sep 27, 2021',
                              imageURL: 'lib/asset/images/profle.png',
                              avatarColor: kAdudianceAvatarColor),
                          NewCustomerCardwidget(
                              title: 'Bitcoin Strategy',
                              subtitle: 'Mon. Sep 27, 2021',
                              imageURL: 'lib/asset/images/profle.png',
                              avatarColor: kOffLineColor),
                          NewCustomerCardwidget(
                              title: 'Tether Strategy',
                              subtitle: 'Mon. Sep 27, 2021',
                              imageURL: 'lib/asset/images/profle.png',
                              avatarColor: kOnlineColor),
                          NewCustomerCardwidget(
                              title: 'Bitcoin Strategy',
                              subtitle: 'Mon. Sep 27, 2021',
                              imageURL: 'lib/asset/images/profle.png',
                              avatarColor: kAdudianceAvatarColor),
                        ],
                      ),
                    ),
                  ],
                ),
                w2: Column(children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your Transaction Histories',
                          style: kMediumLargeSemibold),
                      Text(
                        'View more',
                        style: kSecondaryTextButton,
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TransactionHistoryCardWidget(
                              title: 'Buy from ID 210939',
                              imageUrl: 'lib/asset/images/send_icon.png',
                              avatorColor: kPrimaryNormalButonColor),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TransactionHistorcardTableWidget(
                              date: 'Oct 2, 21',
                              amount: '1.000',
                              labelButton: SuccessLabelButtonWidget(
                                title: 'Success',
                                backgroundColor: kSuccessButtonBackgroundColor,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TransactionHistoryCardWidget(
                            title: 'Buy from ID 210939',
                            imageUrl: 'lib/asset/images/shopping_cart_icon.png',
                            avatorColor: kSuccessButtonTextColor),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TransactionHistorcardTableWidget(
                            date: 'Oct 2, 21',
                            amount: '1.000',
                            labelButton: PendingLabelButtonWidget(
                              text: 'Pending',
                              backgroundColor: kPendingButtonBackgroundColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TransactionHistoryCardWidget(
                            title: 'Buy from ID 210939',
                            imageUrl: 'lib/asset/images/bank_icon.png',
                            avatorColor: kOffLineColor),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TransactionHistorcardTableWidget(
                            date: 'Oct 2, 21',
                            amount: '1.000',
                            labelButton: PickUpLabelButtonWidget(),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
