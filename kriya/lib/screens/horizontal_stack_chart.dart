import 'package:flutter/material.dart';

/// Bar chart example

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:kriya/models/stack_chart_data.dart';

class StackedHorizontalBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  StackedHorizontalBarChart({
    @required this.seriesList,
    this.animate = true,
  });

  /// Creates a stacked [BarChart] with sample data and no transition.
  factory StackedHorizontalBarChart.withSampleData() {
    return new StackedHorizontalBarChart(
      seriesList: _createSampleData(),
//       Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.stacked,
      animationDuration: Duration(milliseconds: 500),

      behaviors: [
        new charts.SeriesLegend(
          position: charts.BehaviorPosition.bottom,
          entryTextStyle: charts.TextStyleSpec(
            fontSize: 14,
          ),
          cellPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),


        ),

        /// 2- also for dealing with a lot of data specially for real-time graphs to scroll on the graph and more zoom in function
      ],

      vertical: false,
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<StackChartData, String>> _createSampleData() {
    final desktopSalesData = [
//      new StackChartData('Jan', 5),
//      new StackChartData('Feb', -25),
//      new StackChartData('Mar', 100),
//      new StackChartData('Apr', 75),
//      new StackChartData('May', 5),
//      new StackChartData('Jun', 25),
//      new StackChartData('Jul', 100),
//      new StackChartData('Aug', 75),
//      new StackChartData('Sep', 5),
//      new StackChartData('Oct', 25),
//      new StackChartData('Nov', 100),
//      new StackChartData('Dec', 75),
    ];

    final tableSalesData = [
//      new StackChartData('Jan', 25),
//      new StackChartData('Feb', 5),
//      new StackChartData('Mar', 25),
//      new StackChartData('Apr', 100),
//      new StackChartData('May', 75),
//      new StackChartData('Jun', 50),
//      new StackChartData('Jul', 10),
//      new StackChartData('Aug', 20),
//      new StackChartData('Sep', 5),
//      new StackChartData('Oct', 25),
//      new StackChartData('Nov', 100),
//      new StackChartData('Dec', 75),
    ];

    return [
      new charts.Series<StackChartData, String>(
        id: 'Desktop',
        domainFn: (StackChartData sales, _) => sales.month,
        measureFn: (StackChartData sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      new charts.Series<StackChartData, String>(
        id: 'Tablet',
        domainFn: (StackChartData sales, _) => sales.month,
        measureFn: (StackChartData sales, _) => sales.sales,
        data: tableSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
