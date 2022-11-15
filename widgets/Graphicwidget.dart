/// Donut chart example. This is a simple pie chart with a hole in the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutPieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,
        // Configure the width of the pie slices to 60px. The remaining space in
        // the chart will be left as a hole in the center.
        defaultRenderer: new charts.ArcRendererConfig(arcWidth: 30));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Istatistik, int>> _createSampleData() {
    final data = [
      new Istatistik(0, 25,Colors.redAccent),
      new Istatistik(1, 150,Colors.blueAccent),
      new Istatistik(2, 100,Colors.green),
     
    ];

    return [
      new charts.Series<Istatistik, int>(
        id: 'Sales',
        domainFn: (Istatistik statistic, _) => statistic.id,
        measureFn: (Istatistik statistic, _) => statistic.value,
        colorFn:(Istatistik statistic, _) => charts.ColorUtil.fromDartColor(statistic.color) ,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class Istatistik {
  final int id;
  final int value;
  final Color color;

  Istatistik(this.id, this.value,this.color);
}