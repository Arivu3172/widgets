
import 'package:flutter/material.dart';

class ToggleIconScreen extends StatefulWidget {
  @override
  _ToggleIconScreenState createState() => _ToggleIconScreenState();
}

class _ToggleIconScreenState extends State<ToggleIconScreen> {
  bool _isToggled = false;

  void _toggleIcon() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toggle Icon Example')),
      body: Center(
        child: IconButton(
          iconSize: 64,
          icon: Icon(
            _isToggled ? Icons.favorite : Icons.favorite_border,
            color: _isToggled ? Colors.red : Colors.grey,
          ),
          onPressed: _toggleIcon,
          tooltip: 'Toggle Favorite',
        ),
      ),
    );
  }
}