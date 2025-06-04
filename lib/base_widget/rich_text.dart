import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RichText Example")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: RichText(
            text: TextSpan(
              text: 'Welcome ',
              style: TextStyle(fontSize: 24, color: Colors.black),
              children: [
                TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Developer!',
                  style: TextStyle(
                    color: Colors.orange,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
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