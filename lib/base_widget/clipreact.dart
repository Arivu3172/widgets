import 'package:flutter/material.dart';

class clipreactwidgets extends StatelessWidget {
  const clipreactwidgets({super.key});

   final String imageUrl = "https://tse1.mm.bing.net/th?id=OIP.WZN0zQDAY2qLuN4o4zyxUQHaHE&pid=Api&P=0&h=180";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.amber,
            child: Column(
              
              children: [
                const Text(
                  'ClipRect (center portion only)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: Image.network(
                      imageUrl,
                      width: 400,
                      height: 300,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
            
                const Text(
                  'ClipRRect (Rounded Corners)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    width: 300,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 30),
            
                const Text(
                  'ClipOval (Circle)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ClipOval(
                  child: Image.network(
                    imageUrl,
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        
    );
  }
}