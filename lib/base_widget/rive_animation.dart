
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Rive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rive + Network Image',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Rive Animation + Network Image')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Rive animation from local asset
            SizedBox(
              height: 250,
              child: RiveAnimation.asset(
                'assets/rocket.riv', // Make sure you have this file
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 40),

            // Network image
            Image.network(
              'https://picsum.photos/250',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.error, size: 100, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}