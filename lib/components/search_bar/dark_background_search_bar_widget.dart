import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class DarkBackgroundSearchBarWidget extends StatefulWidget {
  final void Function(String)? onSearch;

  const DarkBackgroundSearchBarWidget({
    Key? key,
    this.onSearch,
  }) : super(key: key);

  @override
  State<DarkBackgroundSearchBarWidget> createState() =>
      _DarkBackgroundSearchBarWidgetState();
}

class _DarkBackgroundSearchBarWidgetState
    extends State<DarkBackgroundSearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kDisableButtonTextColor,
        shape: RoundedRectangleBorder(
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
              decoration: const InputDecoration(
                hintText: 'Search',
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
