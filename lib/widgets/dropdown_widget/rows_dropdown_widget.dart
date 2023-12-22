import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class RowsDropdownWidget extends StatefulWidget {
  const RowsDropdownWidget({super.key});

  @override
  State<RowsDropdownWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RowsDropdownWidget> {
  String? _selectedOption;

  final List<String> _options = [
    ' 2 rows ',
    ' 4 rows ',
    ' 8 rows ',
    ' 16 rows ',
    ' 24 rows ',
    ' 32 rows ',
    ' 64 rows ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: ShapeDecoration(
        color: kFeedsDropdownInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kFeedsDropdownBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: DropdownButton<String>(
        icon: const Icon(Icons.keyboard_arrow_down_sharp),
        underline: Container(),
        value: _selectedOption,
        onChanged: (newValue) {
          setState(() {
            _selectedOption = newValue;
          });
        },
        items: _options.map<DropdownMenuItem<String>>((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Text(
                  option,
                  style: kRowTextStyle,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
