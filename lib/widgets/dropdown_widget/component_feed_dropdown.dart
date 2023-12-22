import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class ComponentFeedDropDown extends StatefulWidget {
  const ComponentFeedDropDown({super.key});

  @override
  State<ComponentFeedDropDown> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ComponentFeedDropDown> {
  String? _selectedOption;

  final List<String> _options = [
    'Latest Feeds',
    'Oldest Feeds',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down),
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
                style: kExtraSmallRegular,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
