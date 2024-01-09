import 'package:flutter/material.dart';

class TwoWidgetsResponsive extends StatelessWidget {
  final Widget w1;
  final Widget w2;

  const TwoWidgetsResponsive({
    super.key,
    required this.w1,
    required this.w2,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 668) {
        return Column(
          children: [
            w1,
            w2,
          ],
        );
      } else if (constraints.maxWidth < 1100) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: w1),
            Expanded(flex: 2, child: w2),
          ],
        );
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: w1),
            Expanded(flex: 2, child: w2),
          ],
        );
      }
    });
  }
}
