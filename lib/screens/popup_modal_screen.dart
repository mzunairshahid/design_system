import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/card_widget/payment_method_card_tile_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/number_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/price_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/verfication_code_text_field_widget.dart';

class PopupAndModalScreen extends StatefulWidget {
  const PopupAndModalScreen({super.key});

  @override
  State<PopupAndModalScreen> createState() => _PopupAndModalScreenState();
}

class _PopupAndModalScreenState extends State<PopupAndModalScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Popup & Modals'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  NewPaymentMethodCardTileWidget(
                    title: 'Bank Of America',
                    subtitle:
                        'Token buy and sell will transfer funds from this bank',
                    imageUrl: 'lib/asset/images/bank_icon.png',
                    avatarColor: const Color(0xFF3F9CF2),
                    trailingTitle: '4-5 Days',
                    trailingSubtitle: '1% Fee',
                    onPress: () {},
                  ),
                  NewPaymentMethodCardTileWidget(
                    title: 'Bank Of America',
                    subtitle:
                        'Token buy and sell will transfer funds from this bank',
                    imageUrl: 'lib/asset/images/bank_icon.png',
                    avatarColor: const Color(0xFF3F9CF2),
                    trailingTitle: '4-5 Days',
                    trailingSubtitle: '1% Fee',
                    onPress: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            NumberTextFieldWidget(),
            const SizedBox(height: 20),
            VerficationCodeTextFieldWidget(
                hintText: 'Enter 6 digit code',
                controller: _controller,
                keyboardType: TextInputType.number),
            const SizedBox(height: 20),
            PriceTextFieldWidget(
              labelText: 'Price',
              controller: _controller,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
