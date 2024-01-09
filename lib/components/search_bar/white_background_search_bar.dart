import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class WhiteBackgroungSearchBarWidget extends StatefulWidget {
  final String labelText;

  final void Function(String)? onSearch;

  const WhiteBackgroungSearchBarWidget({
    Key? key,
    this.onSearch,
    required this.labelText,
  }) : super(key: key);

  @override
  State<WhiteBackgroungSearchBarWidget> createState() =>
      _WhiteBackgroungSearchBarWidgetState();
}

class _WhiteBackgroungSearchBarWidgetState
    extends State<WhiteBackgroungSearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kPrimaryButtonTextColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kFeedsDropdownBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (widget.onSearch != null) {
                widget.onSearch!(_controller.text);
              }
            },
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.labelText,
                hintStyle: kSmallRegular,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
