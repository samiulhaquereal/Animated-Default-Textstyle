import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 300),
                style: TextStyle(fontSize: _fontsize,color: _color,fontWeight: FontWeight.bold),
                child: Text('Flutter'),
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                _fontsize = _first ? 90 : 60;
                _color = _first ? Colors.blueAccent : Colors.redAccent;
                _first = !_first;
              });
            }, child: Text('Switch'))
          ],
        ),
      ),
    );
  }
}


