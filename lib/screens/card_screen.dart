import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/card_widget/new_customer_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/recent_activity_card_tile_widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  RecentActivityCardtileWidget(
                      title: 'Sent Ethereum',
                      subtitle: 'to Ethereum address',
                      imageURL: 'lib/asset/images/send_icon.png',
                      avatarColor: const Color(0xFF3F9CF2),
                      trailingTitle: '-0.1 ETH',
                      trailingSubtitle: '-\$336,73',
                      onPress: () {}),
                  RecentActivityCardtileWidget(
                      title: 'Buy Tether',
                      subtitle: 'using Visa credit 29381****',
                      imageURL: 'lib/asset/images/shopping_cart_icon.png',
                      avatarColor: const Color(0xFF1AC390),
                      trailingTitle: '+50 USDT',
                      trailingSubtitle: '+\$50',
                      onPress: () {}),
                  const NewCustomerCardwidget(
                    title: 'Bitcoin Strategy',
                    subtitle: 'Mon. Sep 27, 2021',
                    imageURL: 'lib/asset/images/b_icon.png',
                    avatarColor: Color(0xFF1AC390),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
