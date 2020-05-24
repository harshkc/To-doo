import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  TileList({
    @required this.isDone,
    @required this.checkBoxCall,
    @required this.title,
    this.onLongPressed,
  });
  final bool isDone;
  final Function checkBoxCall;
  final String title;
  final Function onLongPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkBoxCall,
        activeColor: Color(0xFFEA1556),
      ),
      onLongPress: onLongPressed,
    );
  }
}
