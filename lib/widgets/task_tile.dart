import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key key,
    @required this.task,
    this.checkboxCallback,
  }) : super(key: key);
  final Task task;
  final Function checkboxCallback;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: CheckboxListTile(
        title: Text(
          widget.task.name,
          style: TextStyle(
              decoration: widget.task.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        value: widget.task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          widget.checkboxCallback(newValue);
        },
      ),
    );
  }
}
