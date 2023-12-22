import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class MessageSendTextfieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Function onPress;

  MessageSendTextfieldWidget(
      {super.key,
      required this.hintText,
      required this.onPress,
      required this.controller,
      required this.keyboardType,
      this.onChanged});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: kPrimaryButtonTextColor),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                keyboardType: keyboardType,
                onChanged: onChanged,
                controller: _controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: kSmallMedium),
              ),
            ),
            GestureDetector(
              onTap: onPress(),
              child: Image.asset(
                'lib/asset/images/send_message_icon.png',
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
