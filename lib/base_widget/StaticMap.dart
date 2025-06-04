
import 'package:flutter/material.dart';

class StaticMapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const latitude = 40.748817;
    const longitude = -73.985428;
    const apiKey = 'YOUR_API_KEY'; // Replace with your actual API key

    final staticMapUrl =
        'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=15&size=600x300&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$apiKey';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Static Map Example')),
        body: Center(
          child: Image.network(
            staticMapUrl,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return Text('Failed to load map');
            },
          ),
        ),
      ),
    );
  }
}