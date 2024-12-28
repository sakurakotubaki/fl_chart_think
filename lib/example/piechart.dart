import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimplePieChart extends StatelessWidget {
  const SimplePieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '1日の時間の使い方',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  value: 8,
                  title: '睡眠\n8時間',
                  color: Colors.blue,
                  radius: 100,
                ),
                PieChartSectionData(
                  value: 8,
                  title: '学校\n8時間',
                  color: Colors.red,
                  radius: 100,
                ),
                PieChartSectionData(
                  value: 4,
                  title: '勉強\n4時間',
                  color: Colors.green,
                  radius: 100,
                ),
                PieChartSectionData(
                  value: 4,
                  title: '余暇\n4時間',
                  color: Colors.orange,
                  radius: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
