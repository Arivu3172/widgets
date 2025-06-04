import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';



class FlipCardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flip Card Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Flip Card Example')),
        body: Center(
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL, // or VERTICAL
            front: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
              ),
              child: Center(
                child: Text(
                  'Front Side',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            back: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
              ),
              child: Center(
                child: Text(
                  'Back Side',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
