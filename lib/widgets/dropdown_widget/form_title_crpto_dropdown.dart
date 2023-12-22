import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class FormTitleCryptoDropDown extends StatefulWidget {
  const FormTitleCryptoDropDown({super.key});

  @override
  State<FormTitleCryptoDropDown> createState() =>
      _FormTitleCryptoDropDownState();
}

class _FormTitleCryptoDropDownState extends State<FormTitleCryptoDropDown> {
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
        'Ehtereum',
        'Bitcoin',
        'BNB Beacon Chain',
        'BNB Smart Chain'
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
