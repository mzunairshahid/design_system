import 'package:flutter/material.dart';

class FourWidgetsResponsive extends StatelessWidget {
  final Widget w1;
  final Widget w2;
  final Widget w3;
  final Widget w4;

  const FourWidgetsResponsive({
    super.key,
    required this.w1,
    required this.w2,
    required this.w3,
    required this.w4,
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
            w4,
          ],
        );
      } else if (constraints.maxWidth < 1100) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: w1),
                Expanded(flex: 1, child: w2),
              ],
            ),
            Row(
              children: [
                Expanded(flex: 1, child: w3),
                Expanded(flex: 1, child: w4),
              ],
            ),
          ],
        );
      } else {
        return Row(
          children: [
            Expanded(flex: 1, child: w1),
            Expanded(flex: 1, child: w2),
            Expanded(flex: 1, child: w3),
            Expanded(flex: 1, child: w4),
          ],
        );
      }
    });
  }
}
