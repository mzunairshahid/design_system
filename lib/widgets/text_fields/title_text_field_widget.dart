import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class TitleTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String usdAmount;
  final Function(String)? onChanged;

  const TitleTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.usdAmount,
    this.onChanged,
  }) : super(key: key);

  @override
  State<TitleTextFieldWidget> createState() => _TitleTextFieldWidgetState();
}

class _TitleTextFieldWidgetState extends State<TitleTextFieldWidget> {
  final TextEditingController _controller = TextEditingController();
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 49,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: ShapeDecoration(
            color: kTextFieldInsideColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: kTextFieldBorderColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: TextField(
            keyboardType: widget.keyboardType,
            controller: _controller,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: kSmallMedium,
              border: InputBorder.none,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(widget.usdAmount, style: kSmallMedium),
            const SizedBox(width: 08),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedItem,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'option 2',
                    child: Row(
                      children: [
                        const Text('ETH'),
                        const SizedBox(width: 8),
                        Image.asset('lib/asset/images/eth_icon.png',
                            height: 16, width: 16),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'option 1',
                    child: Row(
                      children: [
                        const Text('BTC'),
                        const SizedBox(width: 8),
                        Image.asset('lib/asset/images/btc_icon.png',
                            height: 16, width: 16),
                      ],
                    ),
                  ),
                ],
                underline: Container(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
