
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    print('initState() called');
  }
  @override
  void dispose() {
    print('dispose() called');
    super.dispose();
  }
  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build() called');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: _incrementCounter,
              child: Text('Increment by 2'),
            ),
          ],
        ),
      ),
    );
  }
}