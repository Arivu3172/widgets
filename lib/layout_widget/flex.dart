import 'package:flutter/material.dart';


class FlexDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Flex Example')),
        body: Center(
          child: Flex(
            direction: Axis.horizontal, // can be Axis.vertical too
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1, // takes 1 part of the available space
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Flex 1', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 2, // takes 2 parts of the available space
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text('Flex 2', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('Flex 1', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
