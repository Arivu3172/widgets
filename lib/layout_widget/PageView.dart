import 'package:flutter/material.dart';

class PageViewDemoApp extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter PageView Example')),
        body: PageView(
          controller: _pageController,
          children: [
            Container(
              color: Colors.redAccent,
              child: Center(
                child: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  'Page 3',
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
