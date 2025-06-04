import 'package:flutter/material.dart';

class HeroWidgets extends StatelessWidget {
  final String imageUrl;
  

  const HeroWidgets({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Example")),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VideoScreen(thumbnailUrl: imageUrl),
                ),
              );
            },
            child: Hero(
              tag: 'video-thumbnail',
              child: Image.network(imageUrl),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AMLnZu-XqkF93ojfZ5kjXDQ9utN9XWQ4HzV9bTGGtW5z=s88-c-k-c0x00ffffff-no-rj'),
            ),
            title: Text("Learn Flutter in 10 Minutes"),
            subtitle: Text("Flutter Dev • 1.2M views • 2 weeks ago"),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}

class VideoScreen extends StatelessWidget {
  final String thumbnailUrl;

  const VideoScreen({Key? key, required this.thumbnailUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Now Playing")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'video-thumbnail',
            child: Image.network(thumbnailUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Learn Flutter in 10 Minutes – Complete Beginner Guide",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AMLnZu-XqkF93ojfZ5kjXDQ9utN9XWQ4HzV9bTGGtW5z=s88-c-k-c0x00ffffff-no-rj'),
            ),
            title: Text("Flutter Dev"),
            subtitle: Text("1.5M subscribers"),
            trailing: TextButton(
              onPressed: () {},
              child: Text(
                "SUBSCRIBE",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _actionButton(Icons.thumb_up, "12K"),
                _actionButton(Icons.thumb_down, "Dislike"),
                _actionButton(Icons.share, "Share"),
                _actionButton(Icons.download, "Download"),
                _actionButton(Icons.save_alt, "Save"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 24),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}