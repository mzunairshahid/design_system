import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:ouditor_design_system/models/chart_data.dart';

class SaleReportCardWidget extends StatefulWidget {
  const SaleReportCardWidget({Key? key}) : super(key: key);

  @override
  State<SaleReportCardWidget> createState() => _SaleReportCardWidgetState();
}

class _SaleReportCardWidgetState extends State<SaleReportCardWidget> {
  late List<ChartData> primaryData;
  late List<ChartData> secondaryData;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    primaryData = [
      ChartData('Jan', 6),
      ChartData('Feb', 5.8),
      ChartData('Mar', 4),
      ChartData('Apr', 11.8),
      ChartData('May', 6),
      ChartData('Jun', 14.7),
    ];

    secondaryData = [
      ChartData('Jan', 10),
      ChartData('Feb', 8),
      ChartData('Mar', 15),
      ChartData('Apr', 7),
      ChartData('May', 12),
      ChartData('Jun', 9),
    ];

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
            minimum: 0,
            maximum: 15,
            interval: 3,
            labelFormat: '{value}K',
            opposedPosition: false,
          ),
          series: <ChartSeries>[
            ColumnSeries<ChartData, String>(
              dataSource: primaryData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              width: 0.4,
              color: kOffLineColor,
              borderRadius: BorderRadius.circular(2),
            ),
            ColumnSeries<ChartData, String>(
              dataSource: secondaryData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              width: 0.4,
              color: kOnlineColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ],
          axes: <ChartAxis>[
            NumericAxis(
              minimum: 0,
              maximum: 15,
              interval: 3,
              labelFormat: '{value}K',
              axisLine: const AxisLine(width: 2),
            ),
            NumericAxis(
              minimum: 0,
              maximum: 15,
              interval: 3,
              labelFormat: '{value}K',
              opposedPosition: true,
            ),
          ],
          tooltipBehavior: _tooltip,
        ),
      ),
    );
  }
}
