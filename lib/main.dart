import 'package:flutter/material.dart';
import 'function_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int x = 0;
  final int step = 6;
  final calculator = FunctionCalculator();

  @override
  Widget build(BuildContext context) {
    final y = calculator.calculate(x.toDouble());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SEG-31: Maksym's last Flutter App",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('x = $x', style: const TextStyle(fontSize: 20)),
            Text('y = $y', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x += step;
          });
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
