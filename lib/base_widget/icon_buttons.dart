
import 'package:flutter/material.dart';

class IconButtonScreen extends StatelessWidget {
  void _handlePress(String name) {
    print('$name button tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IconButton Examples")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [

            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  iconSize: 36,
                  tooltip: "Favorite",
                  onPressed: () => _handlePress("Favorite"),
                ),
                Text("Favorite"),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.share),
                  color: Colors.blue,
                  iconSize: 36,
                  tooltip: "Share",
                  onPressed: () => _handlePress("Share"),
                ),
                Text("Share"),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.black87,
                  iconSize: 36,
                  tooltip: "Delete",
                  onPressed: () => _handlePress("Delete"),
                ),
                Text("Delete"),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.volume_up),
                  color: Colors.green,
                  iconSize: 36,
                  tooltip: "Volume",
                  onPressed: () => _handlePress("Volume"),
                ),
                Text("Volume"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}