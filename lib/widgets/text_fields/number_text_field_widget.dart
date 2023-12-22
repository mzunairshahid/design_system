import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class NumberTextFieldWidget extends StatefulWidget {
  const NumberTextFieldWidget({Key? key}) : super(key: key);
  @override
  State<NumberTextFieldWidget> createState() => _NumberTextFieldWidgetState();
}

class _NumberTextFieldWidgetState extends State<NumberTextFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: ShapeDecoration(
        color: kTextFieldInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kTextFieldBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'xxxx xxxx xxxx xxxx',
          hintStyle: kSmallRegular,
        ),
        onChanged: (String value) {
          // Remove any non-numeric characters from the input
          String formattedText = value.replaceAll(RegExp(r'\D'), '');

          // Format the input based on the desired pattern
          if (formattedText.length > 16) {
            formattedText = formattedText.substring(0, 16);
          }
          formattedText = formattedText.replaceAllMapped(
              RegExp(r'.{4}'), (Match match) => '${match.group(0)} ');

          // Update the controller's text without triggering onChanged again
          _controller.value = _controller.value.copyWith(
            text: formattedText,
            selection: TextSelection.collapsed(offset: formattedText.length),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
