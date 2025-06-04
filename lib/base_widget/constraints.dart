import 'package:flutter/material.dart';

class Constraintswidgets extends StatelessWidget {
  const Constraintswidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Constraints Demo')),
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 185, 22, 22),
            width: 300,
            height: 300,
            child: ConstrainedBox(
              // Parent gives constraints between 100 and 200 for both width and height
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              child: Container(
                color: Colors.blue,
                // Child tries to be 250x250, but constrained by the parent constraints
                width: 150,
                height: 150,
                child: const Center(
                  child: Text(
                    'This blue box tries 250x250\nbut constrained to max 200x200',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}