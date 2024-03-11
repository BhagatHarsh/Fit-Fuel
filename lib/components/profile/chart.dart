import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeeklyCaloriesChart extends StatefulWidget {
  final List<CaloriesData> caloriesData;
  final bool animate;

  const WeeklyCaloriesChart({
    Key? key,
    required this.caloriesData,
    this.animate = false,
  }) : super(key: key);

  @override
  _WeeklyCaloriesChartState createState() => _WeeklyCaloriesChartState();
}

class _WeeklyCaloriesChartState extends State<WeeklyCaloriesChart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(),
      title: const ChartTitle(text: 'Weekly Calories Consumption'),
      legend: const Legend(isVisible: true),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CartesianSeries<CaloriesData, String>>[
        LineSeries<CaloriesData, String>(
          dataSource: widget.caloriesData,
          xValueMapper: (CaloriesData data, _) => data.day,
          yValueMapper: (CaloriesData data, _) => data.calories.toDouble(),
          name: 'Calories',
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}

class CaloriesData {
  final String day;
  final int calories;

  CaloriesData(this.day, this.calories);
}
