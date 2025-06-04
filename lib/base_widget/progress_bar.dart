
import 'package:flutter/material.dart';

class ProgressBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Bar Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Progress Bars')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Circular Progress Indicator:'),
              SizedBox(height: 10),
              CircularProgressIndicator(),
              SizedBox(height: 40),

              Text('Linear Progress Indicator:'),
              SizedBox(height: 10),
              LinearProgressIndicator(),
              SizedBox(height: 40),

              Text('Determinate Linear Progress:'),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(value: 0.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}