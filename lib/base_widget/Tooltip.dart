
import 'package:flutter/material.dart';

class TooltipExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Tooltip Example')),
        body: Center(
          child: Tooltip(
            message: 'This is a favorite icon!',
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 48,
            ),
          ),
        ),
      ),
    );
  }
}

// Tooltip(
//   message: 'Add to cart',
//   waitDuration: Duration(milliseconds: 500),
//   showDuration: Duration(seconds: 2),
//   decoration: BoxDecoration(
//     color: Colors.black87,
//     borderRadius: BorderRadius.circular(8),
//   ),
//   textStyle: TextStyle(color: Colors.white),
//   child: Icon(Icons.add_shopping_cart),
// )