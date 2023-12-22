import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/app_drawer.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/card_widget/sales_figure_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/status_card_down_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/status_card_upward_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/four_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/tab_block/tab_block_widget.dart';
import 'package:ouditor_design_system/widgets/table/earning_history_table_widget.dart';

class SpreadSheetScreen extends StatelessWidget {
  const SpreadSheetScreen({super.key});

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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Status',
            style: kMediumLargeSemibold,
          ),
          const FourWidgetsResponsive(
            w1: StatusCardUpwardWidget(
              cardTitle: 'New Orders',
              upwardLabelTitle: '+7.51%',
              amount: '3209',
              subtitle: 'Compared to last year',
            ),
            w2: StatusCardDownwardWidget(
              cardTitle: 'Total Sales',
              downwardLabeltitle: '-9.9%',
              amount: '123.012',
              subtitle: 'Compared to last year',
            ),
            w3: StatusCardUpwardWidget(
              cardTitle: 'Total Paid Out',
              upwardLabelTitle: '+7.51%',
              amount: '30.143',
              subtitle: 'Compared to last year',
            ),
            w4: StatusCardUpwardWidget(
              cardTitle: 'New Costumers',
              upwardLabelTitle: '+7.51%',
              amount: '830',
              subtitle: 'Compared to last year',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Earning History',
            style: kMediumLargeSemibold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabBlockWidget(title: 'Weekly', onPress: () {}),
              TabBlockWidget(title: 'Monthly', onPress: () {}),
              TabBlockWidget(title: 'Yearly', onPress: () {}),
            ],
          ),
          const SaleFigureCardWidget(),
          const Text(
            'Earning History',
            style: kMediumLargeSemibold,
          ),
          const SizedBox(
            height: 10,
          ),
          const EarningHistoryTableWidget()
        ]),
      )),
    );
  }
}
