import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class TabLineWidget extends StatefulWidget {
  final String title;
  final Function onPress;
  final bool isSelected;

  const TabLineWidget({
    super.key,
    required this.title,
    required this.onPress,
    required this.isSelected,
  });

  @override
  State<TabLineWidget> createState() => _TabLineWidgetState();
}

class _TabLineWidgetState extends State<TabLineWidget> {
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
        style: _isButtonTapped ? kMediumLinkButton : kSmallRegular,
      ),
      // ),
    );
  }
}
