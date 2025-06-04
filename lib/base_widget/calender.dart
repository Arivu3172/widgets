import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarExample extends StatefulWidget {
  @override
  _TableCalendarExampleState createState() => _TableCalendarExampleState();
}

class _TableCalendarExampleState extends State<TableCalendarExample> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Table Calendar Example')),
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update focused day
                });
              },
              calendarFormat: CalendarFormat.month,
            ),
            SizedBox(height: 12),
            Text(
              _selectedDay == null
                  ? 'No day selected'
                  : 'Selected: ${_selectedDay!.toLocal()}'.split(' ')[0],
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}