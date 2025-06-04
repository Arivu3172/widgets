import 'package:flutter/material.dart';

class ConditionalDemoScreen extends StatefulWidget {
  @override
  _ConditionalDemoScreenState createState() => _ConditionalDemoScreenState();
}

class _ConditionalDemoScreenState extends State<ConditionalDemoScreen> {
  bool isLoggedIn = false;
  bool showImage = true;
  String userRole = 'guest'; // Try 'admin', 'user', or 'guest'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conditional Widgets Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 1. Ternary operator example
            Text(
              isLoggedIn ? 'Welcome back, User!' : 'Please log in',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),

            // 2. If-else statement example
            Builder(
              builder: (context) {
                if (isLoggedIn) {
                  return Text('You have access to the dashboard.');
                } else {
                  return Text('You are not logged in.');
                }
              },
            ),
            SizedBox(height: 20),

            // 3. Conditional widget in children list (if statement)
            if (showImage)
              Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-bg-455fb35c47348f1108ef4eaf8c40f8a65dba2765ef5d1b57a36d5764d0106a30.jpg',
                height: 150,
              ),
            SizedBox(height: 20),

            // 4. Switch case example
            Builder(
              builder: (context) {
                switch (userRole) {
                  case 'admin':
                    return Text('Admin Panel Access Granted',
                        style: TextStyle(color: Colors.red, fontSize: 20));
                  case 'user':
                    return Text('User Dashboard',
                        style: TextStyle(color: Colors.green, fontSize: 20));
                  default:
                    return Text('Guest User - Limited Access',
                        style: TextStyle(color: Colors.grey, fontSize: 20));
                }
              },
            ),

            Spacer(),

            // Toggle Buttons to change state for demo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => isLoggedIn = !isLoggedIn),
                  child: Text(isLoggedIn ? 'Log Out' : 'Log In'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => showImage = !showImage),
                  child: Text(showImage ? 'Hide Image' : 'Show Image'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() {
                    if (userRole == 'guest') userRole = 'user';
                    else if (userRole == 'user') userRole = 'admin';
                    else userRole = 'guest';
                  }),
                  child: Text('Change Role'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
