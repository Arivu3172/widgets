
import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Image Widget")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Network Image", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Image.network(
              'https://picsum.photos/300/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),

            Text("Asset Image", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Image.asset(
              'assets/my_image.png', // Ensure it's declared in pubspec.yaml
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}