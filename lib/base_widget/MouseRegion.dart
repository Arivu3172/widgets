import 'package:flutter/material.dart';


class HoverBox extends StatefulWidget {
  @override
  _HoverBoxState createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          _isHovered ? 'Hovering' : 'Hover me',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
