import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class FormDropdownWidget extends StatelessWidget {
  final String? selectedOption;
  final void Function(String?) onChanged;

  const FormDropdownWidget({
    super.key,
    required this.selectedOption,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedOption,
      onChanged: onChanged,
      items: <String>['1', '2', '3', '4']
          .map<DropdownMenuItem<String>>((String value) {
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
