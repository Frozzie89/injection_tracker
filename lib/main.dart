import 'package:flutter/material.dart';
import 'package:injection_tracker/settings.dart';

void main() {
  runApp(const InjectionTracker());
}

class InjectionTracker extends StatelessWidget {
  const InjectionTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Injection Tracker',
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
              padding: EdgeInsets.all(20.0),
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
                child: IconButton(
                  onPressed: _incrementCounter,
                  icon: Icon(arrowDirection(), size: 50.0),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => const SettingsWidget(),
            ),
          );
        },
        child: Icon(Icons.settings),
      ),
    );
  }

  IconData arrowDirection() => _direction
      ? Icons.arrow_circle_left_outlined
      : Icons.arrow_circle_right_outlined;
}
