
import 'dart:ui';

import 'package:flutter/material.dart';

class BlurScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1605460375648-278bcbd579a6',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Blurred overlay with content
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                width: 300,
                height: 200,
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.2),
                child: Text(
                  'Blurred Container',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}