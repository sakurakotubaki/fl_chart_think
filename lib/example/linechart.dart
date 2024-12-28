import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimpleLineChart extends StatelessWidget {
  const SimpleLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    // 1週間の気温データ
    final List<double> temperatures = [
      22.5,
      24.0,
      23.5,
      26.0,
      25.5,
      23.0,
      22.0
    ];
    final List<String> weekDays = ['月', '火', '水', '木', '金', '土', '日'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '1週間の気温変化',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      return Text(weekDays[value.toInt()]);
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      return Text('${value.toInt()}℃');
                    },
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              borderData: FlBorderData(show: true),
              minX: 0,
              maxX: 6,
              minY: 20,
              maxY: 30,
              lineBarsData: [
                LineChartBarData(
                  spots: List.generate(
                    7,
                    (index) => FlSpot(index.toDouble(), temperatures[index]),
                  ),
                  isCurved: true,
                  color: Colors.blue,
                  dotData: FlDotData(show: true),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
