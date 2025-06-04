
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableListTileScreen extends StatelessWidget {
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'Daisy'];

  void _deleteItem(String name) {
    print('Delete $name');
  }

  void _editItem(String name) {
    print('Edit $name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slidable ListTile")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];

          return Slidable(
            key: ValueKey(name),

            // Left or right slide actions
            startActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) => _editItem(name),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
                SlidableAction(
                  onPressed: (_) => _deleteItem(name),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),

            child: ListTile(
              leading: CircleAvatar(child: Text(name[0])),
              title: Text(name),
              subtitle: Text("Swipe left for actions"),
              onTap: () => print("Tapped $name"),
            ),
          );
        },
      ),
    );
  }
}