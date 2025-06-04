
import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columnSpacing: 24.0,
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Email')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Alice')),
            DataCell(Text('25')),
            DataCell(Text('alice@example.com')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Bob')),
            DataCell(Text('30')),
            DataCell(Text('bob@example.com')),
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('Charlie')),
            DataCell(Text('28')),
            DataCell(Text('charlie@example.com')),
          ]),
        ],
      ),
    );
  }
}