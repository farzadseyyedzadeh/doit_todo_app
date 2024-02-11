import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  final todoText;
  bool isDone;
  ToDoItem({super.key, required this.todoText, this.isDone = false});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          widget.isDone = !widget.isDone;
        });
      },
      leading: widget.isDone
          ? Icon(Icons.check_box_outline_blank)
          : Icon(Icons.check_box),
      title: Text(
        widget.todoText,
        style: TextStyle(
            decoration: widget.isDone
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
      subtitle: Text('done at 8:21'),
    );
  }
}
