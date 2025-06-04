import 'package:flutter/material.dart';


class StickyHeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No AppBar here because SliverAppBar acts as the header
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,             // Sticky header
            expandedHeight: 160,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sticky Header Demo'),
              background: Container(
                color: Colors.teal[700],
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 80,
                  ),
                ),
              ),
              collapseMode: CollapseMode.parallax,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text('List Item #$index'),
                subtitle: Text('Subtitle for item #$index'),
              ),
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
}
