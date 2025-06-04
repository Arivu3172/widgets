import 'package:flutter/material.dart';

class TransformDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Transform Examples")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Original Container:"),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),

            Text("Translated Container:"),
            Transform.translate(
              offset: Offset(30, 10),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),

            Text("Rotated Container (45°):"),
            Transform.rotate(
              angle: 0.785, // in radians = 45 degrees
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),

            Text("Scaled Container (1.5x):"),
            Transform.scale(
              scale: 1.5,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20),

            Text("Skewed Container:"),
            Transform(
              transform: Matrix4.skewX(0.3)..skewY(0.2),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}