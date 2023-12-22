import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class ActionDropdownWidget extends StatefulWidget {
  const ActionDropdownWidget({Key? key}) : super(key: key);

  @override
  State<ActionDropdownWidget> createState() => _ActionDropdownWidgetState();
}

class _ActionDropdownWidgetState extends State<ActionDropdownWidget> {
  String _selectedValue = 'Action';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kFeedsDropdownInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kFeedsDropdownBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: PopupMenuButton<String>(
              initialValue: 'Action',
              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Action',
                  child: Text('Action', style: kActionDropdownStyle),
                ),
                const PopupMenuItem<String>(
                  value: 'Oldest Feeds',
                  child: Text('Oldest Feeds', style: kActionDropdownStyle),
                ),
              ],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedValue,
                    style: kActionDropdownStyle,
                  ),
                  const Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
