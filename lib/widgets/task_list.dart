import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks = <Task>[
    Task(name: "Dậy lúc 6h"),
    Task(name: "Dậy lúc 7h"),
    Task(name: "Dậy lúc 8h"),
  ];

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
            task: widget.tasks[index],
            checkboxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
