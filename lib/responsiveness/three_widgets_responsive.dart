import 'package:flutter/material.dart';

class ThreeWidgetsResponsive extends StatelessWidget {
  final Widget w1;
  final Widget w2;
  final Widget w3;

  const ThreeWidgetsResponsive({
    super.key,
    required this.w1,
    required this.w2,
    required this.w3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 668) {
        return Column(
          children: [
            w1,
            w2,
            w3,
          ],
        );
      } else if (constraints.maxWidth < 1100) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: w1),
            Expanded(flex: 1, child: w2),
            Expanded(flex: 1, child: w3),
          ],
        );
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: w1),
            Expanded(flex: 1, child: w2),
            Expanded(flex: 1, child: w3),
          ],
        );
      }
    });
  }
}
