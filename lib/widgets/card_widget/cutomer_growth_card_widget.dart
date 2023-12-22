import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:ouditor_design_system/models/chart_data.dart';

class CustomerGrowthCardWidget extends StatefulWidget {
  const CustomerGrowthCardWidget({Key? key}) : super(key: key);

  @override
  State<CustomerGrowthCardWidget> createState() =>
      _CustomerGrowthCardWidgetState();
}

class _CustomerGrowthCardWidgetState extends State<CustomerGrowthCardWidget> {
  late List<ChartData> primaryData;
  late List<ChartData> secondaryData;
  late List<ChartData> tertiaryData;
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

    tertiaryData = [
      ChartData('Jan', 8),
      ChartData('Feb', 3),
      ChartData('Mar', 11),
      ChartData('Apr', 6),
      ChartData('May', 8),
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
              color: kPrimaryHoverButtonColor,
              borderRadius: BorderRadius.circular(5),
            ),
            ColumnSeries<ChartData, String>(
              dataSource: secondaryData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              width: 0.4,
              color: kSecondaryClickButtonColor,
              borderRadius: BorderRadius.circular(5),
            ),
            ColumnSeries<ChartData, String>(
              dataSource: tertiaryData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              width: 0.4,
              color: kPrimaryClickButtonColor,
              borderRadius: BorderRadius.circular(5),
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
