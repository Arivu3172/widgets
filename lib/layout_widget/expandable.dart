import 'package:flutter/material.dart';

class ExpandableDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTile Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter ExpansionTile Example')),
        body: ListView(
          children: [
            ExpansionTile(
              title: Text('Item 1'),
              subtitle: Text('Tap to expand'),
              leading: Icon(Icons.info),
              children: [
                ListTile(
                  title: Text('Detail 1'),
                  subtitle: Text('More information about Item 1'),
                ),
                ListTile(
                  title: Text('Detail 2'),
                  subtitle: Text('Additional info'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Item 2'),
              leading: Icon(Icons.settings),
              children: [
                ListTile(
                  title: Text('Setting 1'),
                ),
                ListTile(
                  title: Text('Setting 2'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Item 3'),
              leading: Icon(Icons.contact_mail),
              children: [
                ListTile(
                  title: Text('Contact 1'),
                ),
                ListTile(
                  title: Text('Contact 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
