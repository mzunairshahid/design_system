import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AverageSaleReportcardWidget extends StatelessWidget {
  final String percentage;
  final String price;
  final double percent;
  final String subtitle;
  final Color activeColor;
  final Color inactiveColor;

  const AverageSaleReportcardWidget(
      {super.key,
      required this.percentage,
      required this.price,
      required this.percent,
      required this.subtitle,
      required this.activeColor,
      required this.inactiveColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 100,
              lineWidth: 10,
              percent: percent,
              backgroundWidth: BorderSide.strokeAlignCenter,
              progressColor: activeColor,
              backgroundColor: inactiveColor,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                percentage,
                style: kExtraLargeBold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '\$$price',
              style: kSmallBold,
            ),
            Text(
              subtitle,
              style: kCardSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
