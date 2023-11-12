import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(task: 'Task1 ',),
        TaskTile(task: 'Task2',),
        TaskTile(task: 'Task3',),
      ],
    );
  }
}
