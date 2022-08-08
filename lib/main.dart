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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Container(
            height: 50.0,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry A'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[400],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[200],
            child: const Center(
              child: Text('Entry C'),
            ),
          )
        ],
      )),
    );
  }
}
