import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class TabBlockWidget extends StatefulWidget {
  final String title;
  final Function onPress;

  const TabBlockWidget({
    super.key,
    required this.title,
    required this.onPress,
  });

  @override
  State<TabBlockWidget> createState() => _TabBlockWidgetState();
}

class _TabBlockWidgetState extends State<TabBlockWidget> {
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
      child: Container(
        height: 37,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: ShapeDecoration(
          color: _isButtonTapped ? kTabBlockBackgroundColor : null,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color:
                _isButtonTapped ? kPrimaryNormalButonColor : kTabBlockTextColor,
          ),
        ),
      ),
    );
  }
}
