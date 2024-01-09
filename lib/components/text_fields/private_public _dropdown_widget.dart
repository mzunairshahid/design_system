import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class PrivatePublicDropdownTextfieldWidget extends StatefulWidget {
  const PrivatePublicDropdownTextfieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PrivatePublicDropdownTextfieldWidget> createState() =>
      _PrivatePublicDropdownTextfieldWidgetState();
}

class _PrivatePublicDropdownTextfieldWidgetState
    extends State<PrivatePublicDropdownTextfieldWidget> {
  final List<Map<String, dynamic>> dropdownItems = [
    {'label': 'Public', 'icon': Icons.public, 'color': kPrivateIconColor},
    {'label': 'Private', 'icon': Icons.lock, 'color': kPrivateIconColor}
  ];

  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = 'Public';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kTextFieldInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kTextFieldBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedValue,
              items: dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item['label'],
                  child: Row(
                    children: [
                      Icon(
                        item['icon'],
                        color: item['color'],
                      ),
                      const SizedBox(width: 8),
                      Text(item['label']),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              underline: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
