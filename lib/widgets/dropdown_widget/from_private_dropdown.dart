import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class FormPrivateDropDown extends StatefulWidget {
  const FormPrivateDropDown({super.key});

  @override
  State<FormPrivateDropDown> createState() => _FormPrivateDropDownState();
}

class _FormPrivateDropDownState extends State<FormPrivateDropDown> {
  String _selectedOption = 'label1';

  final List<Map<String, dynamic>> options = [
    {'label1': 'Private', 'icon': Icons.lock},
    {'label2': 'Public', 'icon': Icons.public},
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down),
      value: _selectedOption,
      onChanged: (newValue) {
        setState(() {
          _selectedOption = newValue!;
        });
      },
      items:
          options.map<DropdownMenuItem<String>>((Map<String, dynamic> option) {
        return DropdownMenuItem<String>(
          value: option['label1'],
          child: Row(
            children: <Widget>[
              Icon(option['icon']),
              const SizedBox(width: 10),
              Text(
                option['label2'],
                style: kSmallMedium,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
