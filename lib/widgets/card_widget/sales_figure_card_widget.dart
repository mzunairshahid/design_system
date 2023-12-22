import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SaleFigureCardWidget extends StatefulWidget {
  const SaleFigureCardWidget({super.key});

  @override
  State<SaleFigureCardWidget> createState() => _SaleFigureCardWidgetState();
}

class _SaleFigureCardWidgetState extends State<SaleFigureCardWidget> {
  late TrackballBehavior _trackballBehavior;
  final List<ChartData> data = <ChartData>[
    ChartData('Jan', 6, 3, 6),
    ChartData('Feb', 3, 1, 15),
    ChartData('Mar', 5.8, 8, 4),
    ChartData('Apr', 8.5, 4, 7),
    ChartData('May', 18.5, 9, 2),
    ChartData('Jun', 1, 4, 4),
    ChartData('Jul', 2, 15, 7),
    ChartData('Aug', 5, 8, 5),
    ChartData('Sep', 8, 16, 3),
    ChartData('Oct', 3, 10, 0),
    ChartData('Nov', 8, 13, 6),
    ChartData('Dec', 2, 6, 9),
  ];

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
        enable: true, tooltipDisplayMode: TrackballDisplayMode.groupAllPoints);
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
              maximum: 20,
              interval: 3,
              labelFormat: '{value}K',
              opposedPosition: false,
            ),
            trackballBehavior: _trackballBehavior,
            series: <LineSeries<ChartData, String>>[
              LineSeries<ChartData, String>(
                dataSource: data,
                markerSettings: const MarkerSettings(isVisible: true),
                name: 'United States of America',
                xValueMapper: (ChartData sales, _) => sales.month,
                yValueMapper: (ChartData sales, _) => sales.firstSale,
              ),
              LineSeries<ChartData, String>(
                dataSource: data,
                markerSettings: const MarkerSettings(isVisible: true),
                name: 'Germany',
                xValueMapper: (ChartData sales, _) => sales.month,
                yValueMapper: (ChartData sales, _) => sales.secondSale,
              ),
              LineSeries<ChartData, String>(
                dataSource: data,
                markerSettings: const MarkerSettings(isVisible: true),
                name: 'United Kingdom',
                xValueMapper: (ChartData sales, _) => sales.month,
                yValueMapper: (ChartData sales, _) => sales.thirdSale,
              )
            ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.month, this.firstSale, this.secondSale, this.thirdSale);

  final String month;
  final double firstSale;
  final double secondSale;
  final double thirdSale;
}
