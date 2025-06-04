import 'package:flutter/material.dart';


class DraggableDemoScreen extends StatefulWidget {
  @override
  _DraggableDemoScreenState createState() => _DraggableDemoScreenState();
}

class _DraggableDemoScreenState extends State<DraggableDemoScreen> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Draggable Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.7),
                child: Icon(Icons.directions_run, size: 50, color: Colors.white),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Icon(Icons.directions_run, size: 50, color: Colors.black26),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Icon(Icons.directions_run, size: 50, color: Colors.white),
              ),
            ),
            SizedBox(height: 50),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  color: candidateData.isEmpty ? caughtColor : Colors.greenAccent,
                  child: Center(
                    child: Text(
                      caughtColor == Colors.grey ? 'Drag Here' : 'Caught Color!',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
