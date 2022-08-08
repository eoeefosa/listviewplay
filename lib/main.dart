import 'package:flutter/material.dart';

// This example mirrors the previous one, creating the same list using
// ListView.builder constructor.
// Using the IndexedWidgetBuilder,
// children are built lazily and can be infinite in number
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];
  // NB: growable_array error return if {entries.length != colorCodes.length}
  final List<int> colorCodes = <int>[600, 400, 200, 100, 90];

  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Center(
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(
                      child: Text(
                    'Entry ${entries[index]}',
                    style: const TextStyle(fontSize: 20),
                  )),
                );
              },
            ),
          ),
        ));
  }
}
