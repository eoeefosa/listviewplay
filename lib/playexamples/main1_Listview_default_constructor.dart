import 'package:flutter/material.dart';

// This example uses the default constructor for ListView
// which takes an explicit List<widget> of children.
// This listView's children are made up of containers with Text
class ListviewDefaultconstructor extends StatelessWidget {
  const ListviewDefaultconstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
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
          ),
        ),
      ),
    );
  }
}
