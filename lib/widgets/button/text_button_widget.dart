import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class TextButtonWidget extends StatefulWidget {
  final String title;
  final Function onPress;

  const TextButtonWidget({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  bool _isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isButtonTapped = !_isButtonTapped;
        });
        widget.onPress();
      },
      child: Text(
        widget.title,
        style: TextStyle(
          color: _isButtonTapped ? kPrimaryNormalButonColor : Color(0xFF7D7A89),
        ),
      ),
    );
  }
}
