
import 'package:flutter/material.dart';

class AllButtonsScreen extends StatelessWidget {
  void handlePress(String label) {
    print('$label Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Button Types")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text("ElevatedButton", style: TextStyle(fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () => handlePress('ElevatedButton'),
              child: Text('Elevated Button'),
            ),

            SizedBox(height: 12),

            Text("ElevatedButton with Icon"),
            ElevatedButton.icon(
              onPressed: () => handlePress('ElevatedButton.icon'),
              icon: Icon(Icons.send),
              label: Text("Send"),
            ),

            SizedBox(height: 12),

            Text("OutlinedButton"),
            OutlinedButton(
              onPressed: () => handlePress('OutlinedButton'),
              child: Text("Outlined Button"),
            ),

            SizedBox(height: 12),

            Text("OutlinedButton with Icon"),
            OutlinedButton.icon(
              onPressed: () => handlePress('OutlinedButton.icon'),
              icon: Icon(Icons.download),
              label: Text("Download"),
            ),

            SizedBox(height: 12),

            Text("TextButton"),
            TextButton(
              onPressed: () => handlePress('TextButton'),
              child: Text("Text Button"),
            ),

            SizedBox(height: 12),

            Text("TextButton with Icon"),
            TextButton.icon(
              onPressed: () => handlePress('TextButton.icon'),
              icon: Icon(Icons.link),
              label: Text("Visit Link"),
            ),

            SizedBox(height: 12),

            Text("IconButton"),
            IconButton(
              onPressed: () => handlePress('IconButton'),
              icon: Icon(Icons.favorite, color: Colors.red),
              iconSize: 32,
            ),

            SizedBox(height: 12),

            Text("FloatingActionButton"),
            FloatingActionButton(
              onPressed: () => handlePress('FloatingActionButton'),
              child: Icon(Icons.add),
              tooltip: 'Add',
            ),

            SizedBox(height: 20),

            Text("Styled ElevatedButton"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => handlePress('Styled ElevatedButton'),
              child: Text("Custom Styled Button"),
            ),
          ],
        ),
      ),
    );
  }
}