import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget graph(BuildContext context) {
  List predicted = [[48086.77365451762], [48501.83927402498], [48679.82852250547], [48927.4831034564], [48961.25663437579], [48944.11375055576], [49311.358292945995], [49435.54254911094], [49856.82085459073], [50034.376591936794], [50283.53190290141], [50312.8898881349], [50289.96606322171], [50662.003330397856], [50784.311443704224], [51211.802435156525], [51388.924661368066], [51639.58070234803], [51664.523141894555], [51635.81837588768]];
  final List<FlSpot> real = List.generate(11, (index) {
    return FlSpot(index.toDouble(), predicted[index][0]);
  });

  final List<FlSpot> future = List.generate(10, (index) {
    return FlSpot(index.toDouble()+10, predicted[index+10][0]);
  });

  return LineChart(
    LineChartData(
      gridData:  FlGridData(
        show: false
      ),
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
        show: false,
        leftTitles: SideTitles(
          showTitles: MediaQuery.of(context).size.width > 450 ? true : false,
        ),
        rightTitles: SideTitles(
          showTitles: false
        ),
        bottomTitles: SideTitles(
          showTitles: MediaQuery.of(context).size.width > 450 ? true : false
        ),
        topTitles: SideTitles(
          showTitles: false
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: real,
          isCurved: true,
          barWidth: 4,
          colors: [
            Colors.red
          ],
        ),
        LineChartBarData(
            spots: future,
            isCurved: true,
            barWidth: 4,
            colors: [
              Colors.green
            ],
        )
      ]
    )
  );
}