import 'package:flutter/material.dart';

class listviewwidgets extends StatelessWidget {
  listviewwidgets({super.key});

 final List<String> items = List.generate(30, (index) => 'Item ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(items[index]),
                subtitle: Text('Subtitle for ${items[index]}'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // You can handle item tap here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${items[index]} clicked')),
                  );
                },
              ),
            );
          },
        ),
      
    );
  }
}
