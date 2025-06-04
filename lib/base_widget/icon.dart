
import 'package:flutter/material.dart';

class IconDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Icon Example")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, color: Colors.blue, size: 40),
            Icon(Icons.favorite, color: Colors.red, size: 40),
            Icon(Icons.person, color: Colors.green, size: 40),
          ],
        ),
      ),
    );
  }
}