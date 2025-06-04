import 'package:flutter/material.dart';

class EndDrawerDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'End Drawer Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('End Drawer Example'),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu_open),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer(); // Open end drawer
                },
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Text(
                  'End Drawer',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Tap the menu icon on the right to open End Drawer'),
        ),
      ),
    );
  }
}
