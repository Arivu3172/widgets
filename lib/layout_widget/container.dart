import 'package:flutter/material.dart';

class ContainerDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Container Example')),
        body: Center(
          child: Container(
            width: 200,
            height: 150,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Hello Container!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
