import 'package:flutter/material.dart';

class WrapDemoApp extends StatelessWidget {
  final List<String> chips = [
    'Apple', 'Banana', 'Cherry', 'Date', 'Elderberry',
    'Fig', 'Grape', 'Honeydew', 'Indian Fig', 'Jackfruit',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Wrap Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 10, // horizontal spacing between children
            runSpacing: 15, // vertical spacing between lines
            children: chips.map((fruit) => Chip(
              label: Text(fruit),
              backgroundColor: Colors.lightBlueAccent,
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(fruit[0]),
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
