import 'package:flutter/material.dart';
import 'package:fl_chart_think/example/barchart.dart';
import 'package:fl_chart_think/example/linechart.dart';
import 'package:fl_chart_think/example/piechart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '簡単な統計グラフ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('簡単な統計グラフ'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'グラフの例',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const SimpleBarChart(),
              const SizedBox(height: 40),
              const SimpleLineChart(),
              const SizedBox(height: 40),
              const SimplePieChart(),
            ],
          ),
        ),
      ),
    );
  }
}
