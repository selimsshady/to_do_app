import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  TaskTile({required this.task});
  String task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.task),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
