import 'package:flutter/material.dart';


class SpacerDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spacer Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Spacer Example')),
        body: Center(
          child: Row(
            children: [
              Icon(Icons.arrow_back, size: 30),
              Spacer(), // pushes next widgets to the far right
              Text(
                'Title',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 2), // larger space
              Icon(Icons.menu, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
