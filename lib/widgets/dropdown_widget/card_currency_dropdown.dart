import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class CardCurrencyDropDown extends StatefulWidget {
  const CardCurrencyDropDown({super.key});

  @override
  State<CardCurrencyDropDown> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CardCurrencyDropDown> {
  String? _selectedOption;

  final List<String> _options = [
    'USD',
    'ETH',
    'BNB',
    'BTC',
    'SOL',
    'TRX',
    'TON',
    'ADA',
    'XRP',
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
              Text(option, style: kExtraSmallRegular),
            ],
          ),
        );
      }).toList(),
    );
  }
}
