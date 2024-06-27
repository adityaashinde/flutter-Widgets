import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PieChartDemo(),
    );
  }
}

class PieChartDemo extends StatefulWidget {
  const PieChartDemo({super.key});

  @override
  State createState() => _PieStateDemo();
}

class _PieStateDemo extends State {
  Map<String, double> data = {
    "Food": 20,
    "Movies": 10,
    "Entertainment": 40,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Pie Chart Demo"),
      ),
      body: Center(
        child: PieChart(
          dataMap: data,
          animationDuration: const Duration(milliseconds: 2000),
          chartType: ChartType.ring,
          chartRadius: 200,
          ringStrokeWidth: 100,
          centerText: "Total",
        ),
      ),
    );
  }
}
