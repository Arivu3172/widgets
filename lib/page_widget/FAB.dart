import 'package:flutter/material.dart';


class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Action Button Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FAB Example'),
        ),
        body: Center(
          child: Text(
            'Tap the FAB!',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action when FAB is pressed
            print('Floating Action Button Pressed');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.teal,
          tooltip: 'Add Item',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
