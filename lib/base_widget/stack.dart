import 'package:flutter/material.dart';

class stackwidgets extends StatelessWidget {
  const stackwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Bottom layer
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              // Centered text
              const Text(
                'Centered',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // Positioned box at the top-left
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              // Positioned box at the bottom-right
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
    
    );
  }
}