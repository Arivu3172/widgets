
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  late Timer _timer;
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Update time every second
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Stop timer when widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String formattedTime = DateFormat('hh:mm:ss a').format(_now);

    return Scaffold(
      appBar: AppBar(
        title: Text('Live Clock'),
      ),
      body: Center(
        child: Text(
          formattedTime,
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}