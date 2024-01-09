import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  final List<PopupMenuEntry<String>> items;
  final void Function(String)? onSelected;

  const PopupMenuButtonWidget(
      {super.key, required this.items, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected ?? (String value) {},
      itemBuilder: (BuildContext context) {
        return items;
      },
    );
  }
}
