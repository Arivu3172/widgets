import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridDemo extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.yellow,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Grid View Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Staggered Grid View')),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4, // total columns
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index) => Container(
              color: colors[index],
              child: Center(
                child: Text(
                  'Tile $index',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isEven ? 2 : 1), // different sizes
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
        ),
      ),
    );
  }
}
