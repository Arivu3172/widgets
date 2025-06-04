
import 'package:flutter/material.dart';

class CircleImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circular Image Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Using CircleAvatar", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),

            SizedBox(height: 40),

            Text("Using ClipOval", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            ClipOval(
              child: Image.network(
                'https://picsum.photos/201',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}