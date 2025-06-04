

import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  void _handleTap(String name) {
    print("Tapped on $name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTile Examples")),
      body: ListView(
        children: [

          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Alice Johnson"),
            subtitle: Text("Project Manager"),
            trailing: Icon(Icons.call),
            onTap: () => _handleTap("Alice"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("alice@example.com"),
            trailing: Icon(Icons.send),
            onTap: () => _handleTap("Email"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            trailing: Switch(
              value: true,
              onChanged: (val) {
                print("Toggled notifications");
              },
            ),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => _handleTap("Settings"),
          ),
        ],
      ),
    );
  }
}