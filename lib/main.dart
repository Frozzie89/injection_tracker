import 'package:flutter/material.dart';

void main() {
  runApp(const InjectionTracker());
}

class InjectionTracker extends StatelessWidget {
  const InjectionTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Injection Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _direction = true;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
      _direction = !_direction;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsGeometry.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'You have injected estrogen this many times :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500.0,
              width: 500.0,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  shape: const CircleBorder(),
                  child: Icon(arrowDirection(), size: 50.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData arrowDirection() => _direction
      ? Icons.arrow_circle_left_outlined
      : Icons.arrow_circle_right_outlined;
}
