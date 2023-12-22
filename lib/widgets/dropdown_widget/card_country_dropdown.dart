import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class CardCountryDropDown extends StatefulWidget {
  const CardCountryDropDown({super.key});

  @override
  State<CardCountryDropDown> createState() => _CardCountryDropDownState();
}

class _CardCountryDropDownState extends State<CardCountryDropDown> {
  String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedOption,
      onChanged: (newValue) {
        setState(() {
          _selectedOption = newValue;
        });
      },
      items: <String>[
        'Action',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: kSmallMedium,
          ),
        );
      }).toList(),
    );
  }
}
