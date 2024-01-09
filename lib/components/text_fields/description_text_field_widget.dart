import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class DescriptionTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;

  const DescriptionTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.keyboardType,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
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
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        minLines: 1,
        maxLines: 5,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: kSmallMedium,
            border: InputBorder.none),
      ),
    );
  }
}
