import 'package:flutter/material.dart';


class StackDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Stack Example')),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blueAccent,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.orangeAccent,
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      'Bottom Right',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.star, color: Colors.white, size: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
