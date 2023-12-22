import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class PriceTextFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;

  const PriceTextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.controller,
      required this.keyboardType,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: ShapeDecoration(
        color: kTextFieldInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kTextFieldBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            SizedBox(
              height: 21,
              width: 300,
              child: TextField(
                keyboardType: keyboardType,
                onChanged: onChanged,
                controller: controller,
                decoration: InputDecoration(
                  hintText: labelText,
                  hintStyle: kSmallMedium,
                  border: InputBorder.none,
                ),
              ),
            ),
          ]),
          const SizedBox(width: 14),
          const Row(
            children: [
              Text('0.00', style: kSmallMedium),
              SizedBox(width: 08),
              Text('USDT', style: kSmallMedium),
            ],
          ),
        ],
      ),
    );
  }
}
