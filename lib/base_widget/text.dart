import 'package:flutter/material.dart';



class TextExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // For responsive font sizing
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Text Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 1. Basic Text
              Text("1. Basic Text"),

              SizedBox(height: 10),
              Text("Hello, Flutter!"),

              Divider(),

              /// 2. Styled Text
              Text("2. Styled Text"),

              SizedBox(height: 10),
              Text(
                "Welcome to styled text!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  letterSpacing: 1.5,
                ),
              ),

              Divider(),

              /// 3. Text Overflow and MaxLines
              Text("3. Overflow & MaxLines"),

              SizedBox(height: 10),
              Text(
                "This is a very long line of text that should be trimmed after a certain point to avoid overflow issues in UI rendering.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              Divider(),

              /// 4. Center-aligned Text
              Text("4. Center Aligned Text"),

              SizedBox(height: 10),
              Center(
                child: Text(
                  "Centered!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),

              Divider(),

              /// 5. Responsive Text
              Text("5. Responsive Text"),

              SizedBox(height: 10),
              Text(
                "This text size changes with screen width.",
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // 5% of screen width
                  color: Colors.green,
                ),
              ),

              Divider(),

              /// 6. Rich Text
              Text("6. Rich Text"),

              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Text ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    TextSpan(
                      text: 'Examples',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
