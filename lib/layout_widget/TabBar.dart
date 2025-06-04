import 'package:flutter/material.dart';

class TabBarDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar Demo',
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.search), text: 'Search'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
              Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
              Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
            ],
          ),
        ),
      ),
    );
  }
}
