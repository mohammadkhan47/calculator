import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalesChart extends StatelessWidget {
  const SalesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                getTitlesWidget: (value, meta) {
                  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"];
                  if (value.toInt() >= 0 && value.toInt() < months.length) {
                    return Text(months[value.toInt()]);
                  }
                  return const Text("");
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 40),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: const Border(
              bottom: BorderSide(color: Colors.black12),
              left: BorderSide(color: Colors.black12),
              right: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 5),
                FlSpot(1, 6),
                FlSpot(2, 8),
                FlSpot(3, 7),
                FlSpot(4, 10),
                FlSpot(5, 12),
              ],
              isCurved: true,
              barWidth: 3,
              color: Colors.blue,
              dotData: FlDotData(show: true),
            ),
          ],
        ),
      ),
    );
  }
}
