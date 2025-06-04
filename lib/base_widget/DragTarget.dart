import 'package:flutter/material.dart';



class DragTargetExample extends StatefulWidget {
  @override
  _DragTargetExampleState createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
  Color _targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Draggable<Color>(
            data: Colors.red,
            feedback: Container(
              width: 80,
              height: 80,
              color: Colors.red.withOpacity(0.7),
              child: Icon(Icons.circle, size: 50, color: Colors.white),
            ),
            childWhenDragging: Container(
              width: 80,
              height: 80,
              color: Colors.grey,
              child: Icon(Icons.circle, size: 50, color: Colors.black26),
            ),
            child: Container(
              width: 80,
              height: 80,
              color: Colors.red,
              child: Icon(Icons.circle, size: 50, color: Colors.white),
            ),
          ),
          SizedBox(height: 50),
          DragTarget<Color>(
            onWillAccept: (color) => color == Colors.red,
            onAccept: (color) {
              setState(() {
                _targetColor = color;
              });
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 120,
                height: 120,
                color: candidateData.isEmpty ? _targetColor : Colors.green,
                child: Center(
                  child: Text(
                    candidateData.isEmpty ? 'Drop Here' : 'Release to drop',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
