import 'package:flutter/material.dart';


class ColumnDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Column Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // center vertically
            crossAxisAlignment: CrossAxisAlignment.start, // align left horizontally
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // spacing between widgets
              Icon(Icons.flutter_dash, size: 60, color: Colors.blue),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
