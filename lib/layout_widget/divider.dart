import 'package:flutter/material.dart';

class DividerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vertical & Horizontal Divider Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Dividers Example')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Horizontal Divider:', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  child: Divider(
                    color: Colors.blue,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                SizedBox(height: 40),
                Text('Vertical Divider:', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Left', style: TextStyle(fontSize: 20)),
                      VerticalDivider(
                        color: Colors.red,
                        thickness: 3,
                        width: 30,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Text('Right', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
