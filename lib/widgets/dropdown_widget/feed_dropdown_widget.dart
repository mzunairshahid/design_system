import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class FeedsDropdownWidget extends StatefulWidget {
  const FeedsDropdownWidget({super.key});

  @override
  State<FeedsDropdownWidget> createState() => _FeedsDropdownWidgetState();
}

class _FeedsDropdownWidgetState extends State<FeedsDropdownWidget> {
  String _selectedValue = 'Action';
  @override
  Widget build(BuildContext context) {
    return Container(
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
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              items: <String>[
                'Action',
                'Oldest Feeds',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: kActionDropdownStyle),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
